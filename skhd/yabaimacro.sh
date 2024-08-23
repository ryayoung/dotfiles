#!/bin/sh

case $1 in
    "focus_window")
        yabai -m window --focus $2
        ;;
    "swap_window")
        yabai -m window --swap $2
        ;;
    "warp_window")
        yabai -m window --warp $2
        ;;
    "move_window_display")
        yabai -m window --display $2; yabai -m window --focus recent
        ;;
    "move_window_space")
        yabai -m window --space $2; yabai -m window --focus recent
        ;;
    "focus_display")
        yabai -m display --focus $2
        ;;
    "focus_space")
        yabai -m space --focus $2
        ;;
    "rotate_space")
        yabai -m space --rotate 90
        ;;
    "toggle_zoom_fullscreen")
        yabai -m window --toggle zoom-fullscreen
        ;;
    "toggle_padding_gap")
        yabai -m space --toggle padding; yabai -m space --toggle gap
        ;;
    "toggle_float_center")
        yabai -m window --toggle float; yabai -m window --grid 4:4:1:1:2:2
        ;;
    "toggle_split_type")
        yabai -m window --toggle split
        ;;
    "balance_space")
        yabai -m space --balance
        ;;
    "focus_recent_space")
        yabai -m space --focus recent
        ;;
esac
