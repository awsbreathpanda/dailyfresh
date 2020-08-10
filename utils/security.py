import os
from itsdangerous import TimedJSONWebSignatureSerializer
from django.conf import settings


def get_user_token(user_id, expires_in=3600):
    secret_key = settings.SECRET_KEY

    jws = TimedJSONWebSignatureSerializer(secret_key, expires_in)

    user_token = jws.dumps({'user_id': user_id})

    return user_token


def get_activation_link(url_path, user_token):
    user_token = user_token.decode('utf-8')

    activation_link = os.path.join(url_path, user_token)

    return activation_link
