#!/bin/sh
#
# *** Mappings for Mars Gaming MK4 Mechanical Gaming Keyboard ***
# Fixes inverted period and comma case in all locales having M key followed by , and . keys (I.E: Italian).
# The keyboard normally outputs ; instead of , and : instead of . when SHIFT is not pressed.
# This script addresses the problem.
#
# How does it work?
# This script was made identifying keys mapping with xmodmap. I.e:
#     $ xmodmap -pke | grep "comma"
#     keycode  59 = comma semicolon comma less dead_acute multiply
# Then applying the modified mapping:
#     $ xmodmap -e "keycode  59 = semicolon comma less dead_acute multiply"
#

xmodmap -e "keycode  59 = semicolon comma less dead_acute multiply"
xmodmap -e "keycode  60 = colon period greater periodcentered dead_diaeresis"

