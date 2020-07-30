from django.contrib import admin

from apps.goods.models import (Goods, GoodsImage, GoodsSKU, GoodsType,
                               IndexGoodsBanner, IndexPromotionBanner,
                               IndexTypeGoodsBanner)


# Register your models here.
class GoodsTypeAdmin(admin.ModelAdmin):
    list_display = [
        'name', 'logo', 'image', 'create_time', 'update_time', 'is_delete'
    ]


class GoodsSKUAdmin(admin.ModelAdmin):
    # list_display = [
    #     'goods_type', 'goods', 'name', 'desc', 'price', 'unit', 'sales',
    #     'stock', 'image', 'status', 'create_time', 'update_time', 'is_delete'
    # ]
    list_display = [
        'name', 'desc', 'price', 'unit', 'sales', 'stock', 'image', 'status',
        'create_time', 'update_time', 'is_delete', 'goods_type'
    ]


class GoodsAdmin(admin.ModelAdmin):
    list_display = [
        'name', 'detail', 'create_time', 'update_time', 'is_delete'
    ]


class GoodsImageAdmin(admin.ModelAdmin):
    list_display = [
        'goods_sku', 'image', 'create_time', 'update_time', 'is_delete'
    ]


class IndexGoodsBannerAdmin(admin.ModelAdmin):
    list_display = [
        'goods_sku', 'image', 'index', 'create_time', 'update_time',
        'is_delete'
    ]


class IndexTypeGoodsBannerAdmin(admin.ModelAdmin):
    list_display = [
        'goods_type', 'goods_sku', 'index', 'display_type', 'create_time',
        'update_time', 'is_delete'
    ]


class IndexPromotionBannerAdmin(admin.ModelAdmin):
    list_display = [
        'name', 'image', 'url', 'index', 'create_time', 'update_time',
        'is_delete'
    ]


admin.site.register(Goods, GoodsAdmin)
admin.site.register(GoodsImage, GoodsImageAdmin)
admin.site.register(GoodsSKU, GoodsSKUAdmin)
admin.site.register(GoodsType, GoodsTypeAdmin)
admin.site.register(IndexGoodsBanner, IndexGoodsBannerAdmin)
admin.site.register(IndexPromotionBanner, IndexPromotionBannerAdmin)
admin.site.register(IndexTypeGoodsBanner, IndexTypeGoodsBannerAdmin)
