from rest_framework import viewsets

from apps.api.serializers import (
    AddressSerializer, GoodsImageSerializer, GoodsSerializer,
    GoodsSKUSerializer, GoodsTypeSerializer, IndexGoodsBannerSerializer,
    IndexPromotionBannerSerializer, IndexTypeGoodsBannerSerializer,
    OrderGoodsSerializer, OrderInfoSerializer, UserSerializer)
from apps.goods.models import (Goods, GoodsImage, GoodsSKU, GoodsType,
                               IndexGoodsBanner, IndexPromotionBanner,
                               IndexTypeGoodsBanner)
from apps.order.models import OrderGoods, OrderInfo
from apps.user.models import Address, User


# Create your views here.
class UserViewSet(viewsets.ModelViewSet):

    queryset = User.objects.all()
    serializer_class = UserSerializer


class AddressViewSet(viewsets.ModelViewSet):

    queryset = Address.objects.all()
    serializer_class = AddressSerializer


class OrderInfoViewSet(viewsets.ModelViewSet):

    queryset = OrderInfo.objects.all()
    serializer_class = OrderInfoSerializer


class OrderGoodsViewSet(viewsets.ModelViewSet):

    queryset = OrderGoods.objects.all()
    serializer_class = OrderGoodsSerializer


class GoodsTypeViewSet(viewsets.ModelViewSet):

    queryset = GoodsType.objects.all()
    serializer_class = GoodsTypeSerializer


class GoodsSKUViewSet(viewsets.ModelViewSet):

    queryset = GoodsSKU.objects.all()
    serializer_class = GoodsSKUSerializer


class GoodsViewSet(viewsets.ModelViewSet):

    queryset = Goods.objects.all()
    serializer_class = GoodsSerializer


class GoodsImageViewSet(viewsets.ModelViewSet):

    queryset = GoodsImage.objects.all()
    serializer_class = GoodsImageSerializer


class IndexGoodsBannerViewSet(viewsets.ModelViewSet):

    queryset = IndexGoodsBanner.objects.all()
    serializer_class = IndexGoodsBannerSerializer


class IndexPromotionBannerViewSet(viewsets.ModelViewSet):

    queryset = IndexPromotionBanner.objects.all()
    serializer_class = IndexPromotionBannerSerializer


class IndexTypeGoodsBannerViewSet(viewsets.ModelViewSet):

    queryset = IndexTypeGoodsBanner.objects.all()
    serializer_class = IndexTypeGoodsBannerSerializer
