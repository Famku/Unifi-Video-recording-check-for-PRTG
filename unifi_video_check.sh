#!/bin/bash
#
#Check NVR recording
newfiles=$(find /usr/lib/unifi-video/data/videos -name '*.mp4' -type f -mmin -120 | wc -l)
case $newfiles in
[1-9]*)
echo "0:$newfiles:NVR recording OK"
exit 0
;;
[0]*)
echo "1:$newfiles:NVR recording Error"
exit 1
;;
esac
