from django.contrib import admin
from apps.user.models import User, Address


# Register your models here.
class UserAdmin(admin.ModelAdmin):
    list_display = [
        'username', 'password', 'email', 'is_active', 'is_superuser',
        'create_time', 'update_time', 'is_delete'
    ]


class AddressAdmin(admin.ModelAdmin):
    list_display = [
        'user', 'receiver', 'addr', 'zip_code', 'phone', 'is_default',
        'create_time', 'update_time', 'is_delete'
    ]


admin.site.register(User, UserAdmin)
admin.site.register(Address, AddressAdmin)
