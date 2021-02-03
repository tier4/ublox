# CFG-ITFM (0x06 0x39)
# Jamming/Interference Monitor configuration

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 57

uint32 config                             # interference config word
uint16 CONFIG_BB_THRESHOLD_MASK = 15      # bit3-0 (Fh)
uint16 CONFIG_CW_THRESHOLD_SHIFT = 4      # 4bit
uint16 CONFIG_CW_THRESHOLD_MASK = 496     # bit8-4 (1F0h)

uint32 CONFIG_ALGORITHM_BITS = 761441280  # reserved algorithm settings - should be set to 0x16B156 in hex for correct settings, bit30-9 (2D62AC00h)
uint32 CONFIG_ENABLE = 2147483648         # enable interference detection, bit31 (80000000h)

uint32 config2                            # extra settings for jamming/interference monitor
uint32 CONFIG2_GENERAL_BITS = 798         # general settings - should be set to 0x31E in hex for correct setting, bit11-0 (31Eh)
uint8 CONFIG2_ANT_SETTING_UNKNOWN = 0
uint8 CONFIG2_ANT_SETTING_PASSIVE = 1
uint8 CONFIG2_ANT_SETTING_ACTIVE = 2
uint16 CONFIG_ANT_SETTING_SHIFT = 12
uint16 CONFIG_ANT_SETTING_MASK = 12288    # bit13-12 (300h)

uint32 CONFIG2_ENABLE2 = 16384            # Set to 1 to scan auxiliary bands (u-blox 8 / u-blox M8 only, otherwise ignored), bit14 (4000h)
