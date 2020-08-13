from django.shortcuts import redirect
from django.contrib.auth import authenticate, login
from celery_tasks.tasks import celery_send_mail
from apps.user.models import User
import re
from django.shortcuts import render
from django.views import View
from utils.security import get_user_token, get_activation_link, get_user_id
from django.conf import settings
from django.http import HttpResponse


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

        celery_send_mail.delay(subject,
                               message,
                               from_email,
                               recipient_list,
                               html_message=html_message)

        context = {'errmsg': '添加用户成功'}
        return render(request, 'user_register.html', context=context)


# /user/activate/(token)
class ActivateView(View):
    def get(self, request, token):
        token_bytes = token.encode('utf-8')

        user_id = get_user_id(token_bytes)

        user = User.objects.get(id=user_id)
        user.is_active = 1
        user.save()

        # TODO
        return HttpResponse('<h1>Activate User Successfully</h1>')


# /user/login
class LoginView(View):
    def get(self, request):
        username = request.COOKIES.get('username')
        checked = 'checked'
        if username is None:
            username = ''
            checked = ''
        context = {'username': username, 'checked': checked}
        return render(request, 'user_login.html', context=context)

    def post(self, request):
        username = request.POST.get('username')
        password = request.POST.get('password')
        remember = request.POST.get('remember')

        if not all([username, password]):
            context = {'errmsg': '参数不完整'}
            return render(request, 'user_login.html', context=context)

        user = authenticate(request, username=username, password=password)
        if user is None:
            context = {'errmsg': '用户不存在'}
            return render(request, 'user_login.html', context=context)

        if not user.is_active:
            context = {'errmsg': '用户未激活'}
            return render(request, 'user_login.html', context=context)

        login(request, user)

        next_url = request.GET.get('next')
        if next_url is None:
            response = HttpResponse('Login successfully')
        else:
            response = redirect(next_url)

        if remember == 'on':
            response.set_cookie('username', username, max_age=7 * 24 * 3600)
        else:
            response.delete_cookie('username')

        return response
