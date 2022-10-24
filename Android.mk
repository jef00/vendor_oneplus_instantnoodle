# Copyright (C) 2022 Paranoid Android
# Copyright (C) 2022 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter guacamole guacamoleb guacamoleg hotdog hotdogb,$(PRODUCT_DEVICE)),)

$(info Including firmware for $(PRODUCT_DEVICE)...)

FIRMWARE_IMAGES := $(wildcard $(LOCAL_PATH)/$(PRODUCT_DEVICE)/*)

$(foreach f, $(notdir $(FIRMWARE_IMAGES)), \
    $(call add-radio-file,$(PRODUCT_DEVICE)/$(f)))

endif
