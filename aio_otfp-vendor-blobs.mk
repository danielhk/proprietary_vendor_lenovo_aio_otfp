define find-copy-files
$(sort $(shell find $(2) -name "$(1)" -type f | grep -v "~" | $(SED_EXTENDED) "s:($(2)/?(.*)):\\1\\:$(3)/\\2:" | sed "s://:/:g"))
endef

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_otfp/proprietary/bin,system/bin)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_otfp/proprietary/etc,system/etc)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_otfp/proprietary/lib,system/lib)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_otfp/proprietary/lib64,system/lib64)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_otfp/proprietary/usr,system/usr)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_otfp/proprietary/xbin,system/xbin)

PRODUCT_COPY_FILES += $(call find-copy-files,*,vendor/lenovo/aio_otfp/proprietary/vendor,system/vendor)
