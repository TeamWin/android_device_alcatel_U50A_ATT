LOCAL_PATH:= $(call my-dir)

define add-rootdir-targets
$(foreach target,$(1), \
   $(eval include $(CLEAR_VARS)) \
   $(eval LOCAL_MODULE       := $(target)) \
   $(eval LOCAL_MODULE_CLASS := ETC) \
   $(eval LOCAL_SRC_FILES    := $(target)) \
   $(eval LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)) \
   $(eval include $(BUILD_PREBUILT)))
endef

$(call add-rootdir-targets, \
    fstab.mt6739 \
    init.mt6739.rc \
    init.modem.rc \
    init.mt6739.usb.rc \
    meta_init.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.connectivity.rc \
    factory_init.rc \
    factory_init.project.rc \
    factory_init.connectivity.rc \
    ueventd.mt6739.rc)