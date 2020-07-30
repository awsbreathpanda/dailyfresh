from django.db import models
from utils.model import BaseModel


# Create your models here.
class OrderInfo(BaseModel):
    PAY_METHOD_CHOICES = (
        (0, '货到付款'),
        (1, '微信支付'),
        (2, '支付宝'),
        (3, '银联支付'),
    )

    ORDER_STATUS_CHOICES = (
        (0, '待支付'),
        (1, '待发货'),
        (2, '待收货'),
        (3, '待评价'),
        (4, '已完成'),
    )

    user = models.ForeignKey('user.User',
                             on_delete=models.CASCADE,
                             db_constraint=False)
    order_id = models.CharField(max_length=128)
    address = models.ForeignKey('user.Address',
                                on_delete=models.CASCADE,
                                db_constraint=False)
    pay_method = models.SmallIntegerField(default=2,
                                          choices=PAY_METHOD_CHOICES)
    total_count = models.IntegerField(default=0)
    total_price = models.DecimalField(max_digits=10, decimal_places=2)
    transit_price = models.DecimalField(max_digits=5, decimal_places=2)
    order_status = models.SmallIntegerField(default=0,
                                            choices=ORDER_STATUS_CHOICES)
    trade_no = models.CharField(max_length=256)

    def __str__(self):
        return self.trade_no

    class Meta:
        db_table = 'df_order_info'
        managed = True
        verbose_name = 'OrderInfo'
        verbose_name_plural = 'OrderInfos'


class OrderGoods(BaseModel):
    order_info = models.ForeignKey('OrderInfo',
                                   on_delete=models.CASCADE,
                                   db_constraint=False)
    goods_sku = models.ForeignKey('goods.GoodsSKU',
                                  on_delete=models.CASCADE,
                                  db_constraint=False)
    count = models.IntegerField(default=0)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    comment = models.CharField(max_length=256)

    def __str__(self):
        return self.goods_sku.name

    class Meta:
        db_table = 'df_order_goods'
        managed = True
        verbose_name = 'OrderGoods'
        verbose_name_plural = 'OrderGoodses'
