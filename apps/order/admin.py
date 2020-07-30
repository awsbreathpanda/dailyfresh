from apps.order.models import OrderInfo, OrderGoods
from django.contrib import admin


# Register your models here.
class OrderInfoAdmin(admin.ModelAdmin):
    list_display = [
        'user', 'order_id', 'address', 'pay_method', 'total_count',
        'total_price', 'transit_price', 'order_status', 'trade_no',
        'create_time', 'update_time', 'is_delete'
    ]


class OrderGoodsAdmin(admin.ModelAdmin):
    list_display = [
        'order_info', 'goods_sku', 'count', 'price', 'comment', 'create_time',
        'update_time', 'is_delete'
    ]


admin.site.register(OrderInfo, OrderInfoAdmin)
admin.site.register(OrderGoods, OrderGoodsAdmin)
