# Inherit common tuff
$(call inherit-product, vendor/baked/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/common_small_tablets

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    Trebuchet \
    NovaLauncher \
    VisualizationWallpapers \
    librs_jni

# Inherit drm blobs
-include vendor/baked/configs/common_drm_tablet.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

