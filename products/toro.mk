# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common_phone.mk)

# Tuna overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/tuna
#PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := baked_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/toro:4.0.2/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.2 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
	vendor/baked/prebuilt/tuna/Thinkfree.apk:system/app/Thinkfree.apk \
	vendor/baked/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip \
	vendor/baked/prebuilt/tuna/vold.fstab:system/etc/vold.fstab


