# Inherit common tuff
$(call inherit-product, vendor/baked/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/common_tablets
