#!/system/bin/sh

echo PLAY bootup tone
#enable
bootsound /system/media/audio/ui/bootup.wav -D 0 -d 0

echo STOP bootup tone
#disable
exit
