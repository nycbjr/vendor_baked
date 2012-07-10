# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/maguro

# Setup device specific product configuration.
PRODUCT_NAME := baked_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/maguro:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/baked/prebuilt/tuna/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/baked/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/baked/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

