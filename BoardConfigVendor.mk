# Copyright (C) 2022 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

FIRMWARE_IMAGES := $(wildcard vendor/oneplus/firmware/$(PRODUCT_DEVICE)/*)

AB_OTA_PARTITIONS += \
    $(foreach f, $(notdir $(FIRMWARE_IMAGES)), $(basename $(f)))
