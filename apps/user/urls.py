"""User URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import re_path

from apps.user.views import (ActivateView, LoginView, RegisterView,
                             UserAddressView, UserInfoView, UserOrderView,
                             LogoutView)

urlpatterns = [
    re_path(r'^register$', RegisterView.as_view(), name='register'),
    re_path(r'^activate/(?P<token>.*)$',
            ActivateView.as_view(),
            name='activate'),
    re_path(r'^login$', LoginView.as_view(), name='login'),
    re_path(r'^$', UserInfoView.as_view(), name='info'),
    re_path(r'^order/(?P<page>\d+)$', UserOrderView.as_view(), name='order'),
    re_path(r'^address$', UserAddressView.as_view(), name='address'),
    re_path(r'^logout$', LogoutView.as_view(), name='logout'),
]
