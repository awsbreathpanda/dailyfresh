from django.http import HttpResponse
import os
from itsdangerous import TimedJSONWebSignatureSerializer, SignatureExpired
from django.conf import settings


def get_user_token(user_id, expires_in=3600):
    secret_key = settings.SECRET_KEY

    jws = TimedJSONWebSignatureSerializer(secret_key, expires_in)

    user_token = jws.dumps({'user_id': user_id})

    return user_token


def get_user_id(token_bytes, expires_in=3600):
    secret_key = settings.SECRET_KEY

    jws = TimedJSONWebSignatureSerializer(secret_key)

    try:
        user_id_dict = jws.loads(token_bytes)
    except SignatureExpired:
        # TODO
        return HttpResponse('<h1>激活链接已过期</h1>')

    return user_id_dict.get('user_id')


def get_activation_link(url_path, user_token):
    user_token = user_token.decode('utf-8')

    activation_link = os.path.join(url_path, user_token)

    return activation_link
