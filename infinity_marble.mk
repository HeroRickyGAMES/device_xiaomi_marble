#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := lineage_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23049PCD8G

PRODUCT_SYSTEM_NAME := marble_global
PRODUCT_SYSTEM_DEVICE := marble

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="marble_global-user 14 UKQ1.230804.001 V816.0.10.0.UMRMIXM release-keys" \
    BuildFingerprint=POCO/marble_global/marble:14/UKQ1.230804.001/V816.0.10.0.UMRMIXM:user/release-keys \
    DeviceName=marble \
    DeviceProduct=marble_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# infinity flags
# Whether you are compiling being an OFFICIAL Maintainer:
INFINITY_BUILD_TYPE := UNOFFICIAL

# Maintainer Name
INFINITY_MAINTAINER := PabloEscobar

# Whether the package includes System BLURS
TARGET_SUPPORTS_BLUR := true

# Whether the compiled package ships Widely Used Minimal Google Apps:
WITH_GAPPS := true

# Whether the compiled package ships Complete present Google Apps:
TARGET_SHIPS_FULL_GAPPS := true # (WITH_GAPPS must be set to true alongside)

# Whether the compiled shipped gapps package uses Google Dialer, Messaging, Contacts:
TARGET_BUILD_GOOGLE_TELEPHONY := true # (WITH_GAPPS must be set to true alongside)

# Whether the compiled package ships Moto Calculator irrespective VANILLA or GAPPS:
USE_MOTO_CALCULATOR := false
