#!/bin/sh

bg="#ef5847"

xprop -spy -root _NET_CURRENT_DESKTOP | \
while read line; do
 
    num=$(echo $line | awk '{print $3}')
   
    #echo -n "%{c}%{+o}"
    case $num in
        0) echo "%{c}%{F$bg}━━━%{F-} ━━━ ━━━ ━━━ ━━━" ;;
        1) echo "%{c}━━━ %{F$bg}━━━%{F-} ━━━ ━━━ ━━━" ;;
        2) echo "%{c}━━━ ━━━ %{F$bg}━━━%{F-} ━━━ ━━━" ;;
        3) echo "%{c}━━━ ━━━ ━━━ %{F$bg}━━━%{F-} ━━━" ;;
        4) echo "%{c}━━━ ━━━ ━━━ ━━━ %{F$bg}━━━%{F-}" ;;
    esac
done


# So, it looks like it is a good idea to center the
#   output
