#!/bin/sh


amixer --card PCH get Master | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1/p' | uniq
