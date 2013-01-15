# Inherit common stuff
$(call inherit-product, vendor/baked/configs/common_full.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/common_tablets
