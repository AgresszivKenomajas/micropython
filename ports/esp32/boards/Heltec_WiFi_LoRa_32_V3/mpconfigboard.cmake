set(IDF_TARGET esp32s3)

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    boards/sdkconfig.usb
    boards/sdkconfig.ble
    boards/sdkconfig.spiram_sx
    boards/Heltec_WiFi_LoRa_32_V3/sdkconfig.board
)

if(MICROPY_BOARD_VARIANT STREQUAL "SPIRAM_OCT")
    set(SDKCONFIG_DEFAULTS
        ${SDKCONFIG_DEFAULTS}
        boards/sdkconfig.240mhz
        boards/sdkconfig.spiram_oct
    )

    list(APPEND MICROPY_DEF_BOARD
        MICROPY_HW_BOARD_NAME="Heltec_WiFi_LoRa_32_V3"
    )
endif()
set(MICROPY_FROZEN_MANIFEST ${MICROPY_BOARD_DIR}/manifest.py)
