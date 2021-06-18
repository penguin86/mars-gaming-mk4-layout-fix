#!/bin/sh
#
# *** Mappings for Mars Gaming MK4 Mechanical Gaming Keyboard ***
# Fixes inverted period and comma case in all locales having M key followed by , and . keys (I.E: Italian).
# The keyboard normally outputs ; instead of , and : instead of . when SHIFT is not pressed.
# This script addresses the problem.
#
#
#
# How does it work?
# This script was made identifying keys mapping with xmodmap. I.e:
#     $ xmodmap -pke | grep "comma"
#     keycode  59 = comma semicolon comma less dead_acute multiply
# Then applying the modified mapping:
#     $ xmodmap -e "keycode  59 = semicolon comma less dead_acute multiply"
#
#
#
# Licensing
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


xmodmap -e "keycode  59 = semicolon comma less dead_acute multiply"
xmodmap -e "keycode  60 = colon period greater periodcentered dead_diaeresis"

