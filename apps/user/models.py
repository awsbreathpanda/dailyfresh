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
