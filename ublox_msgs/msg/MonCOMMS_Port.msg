# See Mon-COMMS
#

uint16 portId       # Unique identifier for the port
uint16 txPending    # Number of bytes pending in transmitter buffer
uint32 txBytes      # Number of bytes ever sent
uint8 txUsage       # Maximum usage transmitter buffer during the last sysmon period
uint8 txPeakUsage   # Maximum usage transmitter buffer
uint16 rxPending    # Number of bytes in receiver buffer
uint32 rxBytes      # Number of bytes ever received
uint8 rxUsage       # Maximum usage receiver buffer during the last sysmon period
uint8 rxPeakUsage   # Maximum usage receiver buffer
uint16 overrunErrs  # Number of 100ms timeslots with overrun errors
uint16[4] msgs      # Number of successfully parsed messages for each protocol
uint8[8] reserved2  # Reserved
uint32 skipped      # Number of skipped bytes
