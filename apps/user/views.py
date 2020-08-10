from django.core.mail import send_mail
from apps.user.models import User
import re
from django.shortcuts import render
from django.views import View
from utils.security import get_user_token, get_activation_link
from django.conf import settings


# Create your views here.
# /user/register
class RegisterView(View):
    def get(self, request):
        return render(request, 'user_register.html')

    def post(self, request):
        username = request.POST.get('username')
        password = request.POST.get('password')
        rpassword = request.POST.get('rpassword')
        email = request.POST.get('email')
        allow = request.POST.get('allow')

        if not all([username, password, rpassword, email, allow]):
            context = {'errmsg': '数据不完整'}
            return render(request, 'user_register.html', context=context)

        if password != rpassword:
            context = {'errmsg': '密码不一致'}
            return render(request, 'user_register.html', context=context)

        if not re.match(r'^[a-z0-9][\w.\-]*@[a-z0-9\-]+(\.[a-z]{2,5}){1,2}$',
                        email):
            context = {'errmsg': '邮箱格式不正确'}
            return render(request, 'user_register.html', context=context)

        if allow != 'on':
            context = {'errmsg': '请同意天天生鲜用户协议'}

        try:
            user = User.objects.get(username=username)
        except User.DoesNotExist:
            user = None

        if user is not None:
            context = {'errmsg': '已经创建该用户名'}
            return render(request, 'user_register.html', context=context)

        user = User.objects.create_user(username, email, password)
        user.is_active = 0
        user.save()

        user_token = get_user_token(user.id)
        activation_link = get_activation_link(settings.ACTIVATION_URL_PATH,
                                              user_token)

        # send email
        subject = '天天生鲜欢迎信息'
        message = ''
        html_message = (
            '<h1>%s，欢迎您成为天天生鲜的注册会员</h1><p>请点击以下链接激活你的账户</p><br><a href="%s">%s</a>'
            % (username, activation_link, activation_link))
        from_email = 'dailyfresh<awsbreathpanda@163.com>'
        recipient_list = [
            'awsbreathpanda@163.com',
        ]

        send_mail(subject,
                  message,
                  from_email,
                  recipient_list,
                  html_message=html_message)

        context = {'errmsg': '添加用户成功'}
        return render(request, 'user_register.html', context=context)
