# Inherit common stuff
$(call inherit-product, vendor/baked/configs/common.mk)

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/common_tablets
