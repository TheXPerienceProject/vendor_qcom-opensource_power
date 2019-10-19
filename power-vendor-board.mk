# Disable Power HAL by default for legacy targets.
# Devices can still opt in by setting TARGET_USES_NON_LEGACY_POWERHAL in BoardConfig.mk.
# Conversely, recent chips, such as sm8150 with an old vendor can opt out.
#ifneq ($(call is-board-platform-in-list, msm8996 msm8937 msm8952 msm8953 msm8998 sdm660 sdm845 sdm710), true)
#TARGET_USES_NON_LEGACY_POWERHAL ?= true
ifeq ($(call is-board-platform-in-list,trinket), true)
TARGET_USES_NON_LEGACY_POWERHAL := false
else
TARGET_USES_NON_LEGACY_POWERHAL := true
endif
