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

volume(){
    amixer --card PCH get Master | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1/p' | uniq 
}

network(){
    # for 3 interfaces: loopbak, ethernet, wifi
    read lo int1 int2 <<< `ip link | sed -n 's/^[0-9]: \(.*\):.*$/\1/p'`

    # iwconfig returns an error code if the interface tseted has no wireless extensions
    if iwconfig $int1 >/dev/null 2>&1; then
        wifi=$int1
        eth0=$int2
    else
        wifi=$int2
        eth0=$int1
    fi

    ip link show $eth0 | grep 'state UP' >/dev/null && int=$eth0 || int=$wifi

    echo -n "$int "

    ping -c 1 8.8.8.8 >/dev/null 2>&1 && echo "connected" || echo "disconnected"
}

groups(){
    cur=`xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}'`
    tot=`xprop -root _NET_NUMBER_OF_DESKTOPS | awk '{print $3}'`

    for w in `seq 0 $((cur - 1))`; do line="${line}="; done
    line="${line}|"
    for w in `seq $((cur + 2)) $tot`; do line="${line}="; done
    echo $line
}

bgcolor="#2e2b37"
fgcolor="#c3c7c8"

# This loop will fill a bufer with info, then output it to stduot
while :; do
    buf=""
    buf="${buf} %{F$fgcolor}%{B$bgcolor}%{l}    [$(groups)] %{F-}%{B-}"
    buf="${buf} %{F$fgcolor}%{B$bgcolor}%{c} NET: $(network) %{F-}%{B-}"
    buf="${buf} %{F$fgcolor}%{B$bgcolor}%{r}| CLK:  $(clock) |%{F-}%{B-}"
    buf="${buf} %{F$fgcolor}%{B$bgcolor}%{r} BAT:  $(battery) |%{F-}%{B-}"

    echo $buf

    sleep 1 
done
