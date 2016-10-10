#!/bin/sh

bg="#2e2b37"
fg="#c3c7c8"
font="-xos4-terminus-medium-r-normal--12-120-72-72-c-60-iso10646-1"
sh barfeed.sh | lemonbar -g 1920x24+0+0 -f$font -B$bg HDMI1 #&

#sh barfeed.sh | lemonbar -g 1366x24+0+0 -f$font -B$bg eDP1   
#sh barfeed.sh | lemonbar -g 220x24+0+0 -f$font -B$bg eDP1   

