/*
 * Copyright 2020 Tier IV, Inc. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef UBLOX_GPS_TO_STRING_H_
#define UBLOX_GPS_TO_STRING_H_

/**
 * @file to_string.h
 * @brief Convert value to string
 */

#include <ublox_msgs/ublox_msgs.h>

#define aStatusToString(X)                                                    \
  (((X) == ublox_msgs::MonHW::A_STATUS_INIT)                                  \
       ? "Init"                                                               \
       : ((X) == ublox_msgs::MonHW::A_STATUS_UNKNOWN)                         \
             ? "Don't know"                                                   \
             : ((X) == ublox_msgs::MonHW::A_STATUS_OK)                        \
                   ? "OK"                                                     \
                   : ((X) == ublox_msgs::MonHW::A_STATUS_SHORT)               \
                         ? "Short"                                            \
                         : ((X) == ublox_msgs::MonHW::A_STATUS_OPEN) ? "Open" \
                                                                     : "???")

#define jammingStateToString(X)                                         \
  (((X) == ublox_msgs::MonHW::JAMMING_STATE_UNKNOWN_OR_DISABLED)        \
       ? "Unknown or feature disabled"                                  \
       : ((X) == ublox_msgs::MonHW::JAMMING_STATE_OK)                   \
             ? "OK"                                                     \
             : ((X) == ublox_msgs::MonHW::JAMMING_STATE_WARNING)        \
                   ? "Warning"                                          \
                   : ((X) == ublox_msgs::MonHW::JAMMING_STATE_CRITICAL) \
                         ? "Critical"                                   \
                         : "???")

#define portIdToString(X)                    \
  (((X) == 0x0000)                           \
       ? "I2C"                               \
       : ((X) == 0x0001)                     \
             ? "UART1"                       \
             : ((X) == 0x0002)               \
                   ? "UART2"                 \
                   : ((X) == 0x0003) ? "USB" \
                                     : ((X) == 0x0004) ? "SPI" : "???")

#define spoofDetStateToString(X)                                              \
  (((X) == ublox_msgs::NavSTATUS::SPOOF_DET_STATE_UNKNOWN)                    \
       ? "Unknown or deactivated"                                             \
       : ((X) == ublox_msgs::NavSTATUS::SPOOF_DET_STATE_NONE)                 \
             ? "No spoofing indicated"                                        \
             : ((X) == ublox_msgs::NavSTATUS::SPOOF_DET_STATE_SPOOFING)       \
                   ? "Spoofing indicated"                                     \
                   : ((X) == ublox_msgs::NavSTATUS::SPOOF_DET_STATE_MULTIPLE) \
                         ? "Multiple spoofing indications"                    \
                         : "???")

#endif  // UBLOX_GPS_TO_STRING_H_
