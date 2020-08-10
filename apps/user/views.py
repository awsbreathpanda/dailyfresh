from apps.user.models import User
import re
from django.shortcuts import render
from django.views import View


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

        context = {'errmsg': '添加用户成功'}
        return render(request, 'user_register.html', context=context)
