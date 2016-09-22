#!/bin/sh
#
# Thanks to zebra for his awesome writeup on lemonbar
# mk's new lemonbar feeder!

clock(){
    date '+%T %D'
}

battery(){
    BATC=/sys/class/power_supply/BAT1/capacity
    BATS=/sys/class/power_supply/BAT1/status

    # prepends percentage with a '+' if charging and a '-' if not
    test "'cat $BATS'" = "Charging" && echo -n '+' || echo -n '-'

    # print out the content
    sed -n p $BATC
}

# This loop will fill a bufer with info, then output it to stduot
while :; do
    buf=""
    buf="${buf} %{r}| CLK:  $(clock) |"
    buf="${buf} %{r} BAT:  $(battery) |"

    echo $buf

    sleep 1 # now this will update every second
done
