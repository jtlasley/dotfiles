#!/bin/sh

## Onodera colors
#bgdark="#021b21"
fg="#eeeeee"
##

bgdark="#273941"
#fg="#63a690"

font="-xos4-terminus-medium-r-normal--12-120-72-72-c-60-iso10646-1"
. /home/mk/bin/lemonbar/barfeed.sh | lemonbar -g 1920x24+0+0 -f$font -B$bgdark HDMI1 &
#sh barfeed.sh | lemonbar -g 1680x24+0+0 -f$font -B$bgdark HDMI1 &

. /home/mk/bin/lemonbar/barfeed.sh | lemonbar -g 1366x24+0+0 -f$font -B$bgdark eDP1   
#sh barfeed.sh | lemonbar -g 220x24+0+0 -f$font -B$bgdark eDP1   

