from rest_framework.routers import DefaultRouter

from apps.api.views import (GoodsImageViewSet, GoodsSKUViewSet,
                            GoodsTypeViewSet, GoodsViewSet, OrderGoodsViewSet,
                            OrderInfoViewSet, UserViewSet, AddressViewSet,
                            IndexGoodsBannerViewSet,
                            IndexPromotionBannerViewSet,
                            IndexTypeGoodsBannerViewSet)

router = DefaultRouter()

router.register(r'goodstypes', GoodsTypeViewSet)
router.register(r'goodsskus', GoodsSKUViewSet)
router.register(r'goodses', GoodsViewSet)
router.register(r'goodsimages', GoodsImageViewSet)
router.register(r'indexgoodsbanners', IndexGoodsBannerViewSet)
router.register(r'indexpromotionbanners', IndexPromotionBannerViewSet)
router.register(r'indexgoodstypebanners', IndexTypeGoodsBannerViewSet)

router.register(r'orderinfos', OrderInfoViewSet)
router.register(r'ordergoodses', OrderGoodsViewSet)

router.register(r'users', UserViewSet)
router.register(r'addresses', AddressViewSet)
