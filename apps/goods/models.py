from django.db import models
from utils.model import BaseModel
from tinymce.models import HTMLField


# Create your models here.
class GoodsType(BaseModel):
    name = models.CharField(max_length=50)
    logo = models.CharField(max_length=50)
    image = models.ImageField()

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'df_goods_type'
        managed = True
        verbose_name = 'GoodsType'
        verbose_name_plural = 'GoodsTypes'


class GoodsSKU(BaseModel):
    STATUS_CHOICES = (
        (0, '下线'),
        (1, '上线'),
    )

    goods_type = models.ForeignKey('GoodsType',
                                   on_delete=models.CASCADE,
                                   db_constraint=False)
    goods = models.ForeignKey('Goods',
                              on_delete=models.CASCADE,
                              db_constraint=False)
    name = models.CharField(max_length=50)
    desc = models.CharField(max_length=256)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    unit = models.CharField(max_length=50)
    sales = models.IntegerField(default=0)
    stock = models.IntegerField(default=0)
    image = models.ImageField()
    status = models.SmallIntegerField(choices=STATUS_CHOICES, default=1)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'df_goods_sku'
        managed = True
        verbose_name = 'GoodsSKU'
        verbose_name_plural = 'GoodsSKUs'


class Goods(BaseModel):
    name = models.CharField(max_length=50)
    detail = HTMLField()

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'df_goods'
        managed = True
        verbose_name = 'Goods'
        verbose_name_plural = 'Goodses'


class GoodsImage(BaseModel):
    goods_sku = models.ForeignKey('GoodsSKU',
                                  on_delete=models.CASCADE,
                                  db_constraint=False)
    image = models.ImageField()

    def __str__(self):
        return self.goods_sku.name

    class Meta:
        db_table = 'df_goods_image'
        managed = True
        verbose_name = 'GoodsImage'
        verbose_name_plural = 'GoodsImages'


class IndexGoodsBanner(BaseModel):
    goods_sku = models.ForeignKey('GoodsSKU',
                                  on_delete=models.CASCADE,
                                  db_constraint=False)
    image = models.ImageField()
    index = models.SmallIntegerField(default=0)

    def __str__(self):
        pass

    class Meta:
        db_table = 'df_index_goods_banner'
        managed = True
        verbose_name = 'IndexGoodsBanner'
        verbose_name_plural = 'IndexGoodsBanners'


class IndexTypeGoodsBanner(BaseModel):
    DISPLAY_TYPE_CHOICES = (
        (0, '标题'),
        (1, '图片'),
    )
    goods_type = models.ForeignKey('GoodsType',
                                   on_delete=models.CASCADE,
                                   db_constraint=False)
    goods_sku = models.ForeignKey('GoodsSKU',
                                  on_delete=models.CASCADE,
                                  db_constraint=False)
    index = models.SmallIntegerField(default=0)
    display_type = models.SmallIntegerField(default=1,
                                            choices=DISPLAY_TYPE_CHOICES)

    def __str__(self):
        return self.goods_sku.name

    class Meta:
        db_table = 'df_index_type_goods_banner'
        managed = True
        verbose_name = 'IndexTypeGoodsBanner'
        verbose_name_plural = 'IndexTypeGoodsBanners'


class IndexPromotionBanner(BaseModel):
    name = models.CharField(max_length=50)
    image = models.ImageField()
    url = models.URLField()
    index = models.SmallIntegerField(default=0)

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'df_index_promotion_banner'
        managed = True
        verbose_name = 'IndexPromotionBanner'
        verbose_name_plural = 'IndexPromotionBanners'
