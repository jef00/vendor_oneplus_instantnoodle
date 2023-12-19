# Copyright (C) 2022 Paranoid Android
# Copyright (C) 2022 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(PRODUCT_DEVICE),instantnoodle)

$(info Including firmware for $(PRODUCT_DEVICE)...)

FIRMWARE_IMAGES := $(wildcard $(LOCAL_PATH)/radio/*)

$(foreach f, $(notdir $(FIRMWARE_IMAGES)), \
    $(call add-radio-file,radio/$(f)))
endif
