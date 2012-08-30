$(call inherit-product, vendor/baked/configs/common.mk)

# Inherit drm blobs
-include vendor/baked/configs/common_drm_phone.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
