#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a31 device
$(call inherit-product, device/samsung/a31/device.mk)

LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

PRODUCT_DEVICE := a31
PRODUCT_NAME := lineage_a31
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A31
PRODUCT_MANUFACTURER := Samsung

PRODUCT_SYSTEM_NAME := a31xx
PRODUCT_SYSTEM_DEVICE := a31

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="samsung/a31xx/a31:12/SP1A.210812.016/A315FXXS5DXB1:user/release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := samsung/a31xx/a31:12/SP1A.210812.016/A315FXXS5DXB1:user/release-keys
