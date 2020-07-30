from django.db import models
from utils.model import BaseModel
from django.contrib.auth.models import AbstractUser

# Create your models here.


class User(AbstractUser, BaseModel):
    def __str__(self):
        return self.username

    class Meta:
        db_table = 'df_user'
        managed = True
        verbose_name = 'User'
        verbose_name_plural = 'Users'


class Address(BaseModel):
    user = models.ForeignKey('User',
                             on_delete=models.CASCADE,
                             db_constraint=False)
    receiver = models.CharField(max_length=50)
    addr = models.CharField(max_length=256)
    zip_code = models.CharField(max_length=50)
    phone = models.CharField(max_length=50)
    is_default = models.BooleanField(default=False)

    def __str__(self):
        return self.receiver

    class Meta:
        db_table = 'df_address'
        managed = True
        verbose_name = 'Address'
        verbose_name_plural = 'Addresses'
