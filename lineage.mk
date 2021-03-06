#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/hs/razar

# Inherit some common Lineage OS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product-if-exists, vendor/hs/razar/razar-vendor.mk)

# Inherit prebuilt Google apps.
$(call inherit-product-if-exists, vendor/google/products/gms.mk)

# Device branding
PRODUCT_DEVICE := razar
PRODUCT_NAME := lineage_razar
PRODUCT_BRAND := Highscreen
PRODUCT_MANUFACTURER := Highscreen
PRODUCT_MODEL := Razar (Pro)

PRODUCT_GMS_CLIENTID_BASE := android-highscreen

PRODUCT_LOCALES := ru_RU en_US
