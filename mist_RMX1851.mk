# Project-MistOS
#Android-14
#based on R15HI cr14 device tree and cykeek dynamic tree
#used the build fp of R15HI cr14 tree
#created by an ultra noob named UnknownSM2000(dont have any knowledgeabout making custom rom XD )

# Maintainer name for MistOS
MIST_MAINTAINER := "UnknownSM2000"

# Adding Blur support
TARGET_SUPPORTS_BLUR := true

# For UDFPS devices(set false if you dont give a fuck about animations)
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Build GAPPS(set false if want vannila)
WITH_GAPPS := true

# Build Launcher3(MistOS Launcher) in GAPPS (default is Pixel Launcher)
TARGET_INCLUDE_PIXEL_LAUNCHER := false

# Inherit some common MistOS vendor stuff.
$(call inherit-product, vendor/mist/config/common_full_phone.mk)

# Inherit from RMX1851 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX1851
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := mist_RMX1851
PRODUCT_MODEL := RMX1851

PRODUCT_SYSTEM_NAME := RMX1851
PRODUCT_SYSTEM_DEVICE := RMX1851

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1851-user 11 RKQ1.201217.002 1623376276806 release-keys" \
    TARGET_DEVICE=RMX1851 \
    TARGET_PRODUCT=RMX1851

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := realme/RMX1851/RMX1851:11/RKQ1.201217.002/1623376276806:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)