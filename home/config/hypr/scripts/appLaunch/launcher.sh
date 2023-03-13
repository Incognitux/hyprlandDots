#!/usr/bin/env bash

dir="$HOME/.config/hypr/scripts/appLaunch/"
theme='style-fullscreen'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
