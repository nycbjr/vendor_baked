# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/crespo

# Setup device specific product configuration.
PRODUCT_NAME := baked_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=soju BUILD_FINGERPRINT=google/soju/crespo:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="soju-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849

# Copy crespo specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/baked/prebuilt/crespo/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/baked/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

