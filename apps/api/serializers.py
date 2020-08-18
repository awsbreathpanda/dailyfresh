from rest_framework import serializers

from apps.goods.models import (Goods, GoodsImage, GoodsSKU, GoodsType,
                               IndexGoodsBanner, IndexPromotionBanner,
                               IndexTypeGoodsBanner)
from apps.order.models import OrderGoods, OrderInfo
from apps.user.models import Address, User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'


class AddressSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Address
        fields = '__all__'


class OrderInfoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = OrderInfo
        fields = '__all__'


class OrderGoodsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = OrderGoods
        fields = '__all__'


class GoodsTypeSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = GoodsType
        fields = '__all__'


class GoodsSKUSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = GoodsSKU
        fields = '__all__'


class GoodsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Goods
        fields = '__all__'


class GoodsImageSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = GoodsImage
        fields = '__all__'


class IndexGoodsBannerSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = IndexGoodsBanner
        fields = '__all__'


class IndexPromotionBannerSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = IndexPromotionBanner
        fields = '__all__'


class IndexTypeGoodsBannerSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = IndexTypeGoodsBanner
        fields = '__all__'
