from celery import Celery
import os
import django
from django.core.mail import send_mail

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'dailyfresh.settings')
django.setup()

app = Celery('celery_tasks.tasks', broker='redis://localhost:6379/8')


@app.task
def celery_send_mail(subject, message, from_email, recipient_list,
                     html_message):
    send_mail(subject,
              message,
              from_email,
              recipient_list,
              html_message=html_message)
