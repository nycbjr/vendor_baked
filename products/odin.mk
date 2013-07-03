$(call inherit-product, device/sony/odin/full_odin.mk)

# Inherit GSM make.
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Enhanced NFC
#$(call inherit-product, vendor/baked/configs/nfc_enhanced.mk)

# Inherit Baked common Phone stuff.
#$(call inherit-product, vendor/vendor/configs/common_full_phone.mk)
$(call inherit-product, vendor/baked/configs/common_full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6503 BUILD_FINGERPRINT=Sony/C6503_1271-0336/C6503:4.2.2/10.3.A.0.423/WP5_rg:user/release-keys PRIVATE_BUILD_DESC="C6503-user 4.2.2 10.3.A.0.423 WP5_rg test-keys"

PRODUCT_NAME := cm_odin
PRODUCT_DEVICE := odin

# Setup device specific product configuration.
PRODUCT_NAME := baked_odin
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := odin
PRODUCT_MODEL := Xperia ZL
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="cingular_us/m7/m7:4.1.2/JZO54K/166754.12:user/release-keys" PRIVATE_BUILD_DESC="1.26.502.12 CL166754 release-keys"

# Release name
PRODUCT_RELEASE_NAME := odin

PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation.zip

