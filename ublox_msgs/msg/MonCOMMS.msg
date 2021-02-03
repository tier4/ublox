# MON-COMMS (0x0A 0x36)
# Comm port information
#
# Consolidated communications information for all ports. The size of the message
# is determined by the number of ports that are in use on the receiver. A port is
# only included if communication, either send or receive, has been initiated on that
# port.

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 54

uint8 version       # Message version (0x00 for this version)
uint8 nPorts        # Number of ports included

uint8 txErrors      # tx error bitmask
uint8 MEM = 1       # Memory Allocation error
uint8 ALLOC = 2     # Allocation error (TX buffer full) 

uint8[1] reserved1  # Reserved
uint8[4] protIds    # The identifiers of the protocols reported in the msgs array
uint8 UBX = 0
uint8 NMEA = 1
uint8 RTCM2 = 2
uint8 RTCM3 = 5
#uint8 NO_PROTOCOL_REPORTED = 256 # Beyond the range of uint8

# Start of repeated group (nPorts times)
MonCOMMS_Port[] ports
# End of repeated group (nPorts times)
