# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := dlx

# Inherit some common deso stuff.
$(call inherit-product, vendor/deso/config/common_phone.mk)

# overlays
PRODUCT_PACKAGE_OVERLAYS += device/htc/dlx/overlay

# Enhanced NFC
$(call inherit-product, vendor/deso/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/dlx/full_dlx.mk)

# Inherit some common Desolation stuff.
$(call inherit-product, vendor/deso/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dlx
PRODUCT_NAME := deso_dlx
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := HTC6435LVW
PRODUCT_MANUFACTURER := HTC

# Device hardware info
PRODUCT_CHIPSET := Qualcomm MDM615m/APQ8064
PRODUCT_CPU := Quad-core 1.5 GHz Krait 300
PRODUCT_GPU := Adreno 320
PRODUCT_REAR_CAM := 8 MP, 3264 x 2448 pixels
PRODUCT_FRONT_CAM := 2.1 MP
PRODUCT_SCREEN_SIZE := 5.0 inches ~441 ppi, Super LCD3
PRODUCT_SCREEN_RES := 1080 x 1920 pixels

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dlx \
    BUILD_FINGERPRINT=htc/verizon_wwe/dlx:4.4.2/KOT49H/322791.5:user/release-keys \
    PRIVATE_BUILD_DESC="4.09.605.5 CL322791 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon
