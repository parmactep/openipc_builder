#!/bin/sh
#
# Perform basic settings on a known IP camera
#
#
# Set custom upgrade url
#
#fw_setenv upgrade 'https://github.com/OpenIPC/builder/releases/download/latest/ssc325_lite_trassir-tr-w2c1-v1-nor.tgz'
#
#
# Set custom majestic settings
#
cli -s .nightMode.irCutPin1 78
cli -s .nightMode.irCutPin2 79
cli -s .nightMode.backlightPin 52
cli -s .nightMode.colorToGray true
cli -s .image.mirror true
cli -s .image.flip true
#cli -s .audio.speakerPin 15
#cli -s .audio.outputVolume 80
cli -s .video0.codec h264
#
#
# Set wlan device and credentials if need
#
fw_setenv wlandev mt7601sta-generic
fw_setenv wlanssid BF-MAIN
fw_setenv wlanpass INTERNET

exit 0
