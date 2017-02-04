# SOUND

pactl set-card-profile 0 output:analog-stereo
pactl set-card-profile 0 output:hdmi-stereo+input:analog-stero

# VIDEO

guvcview

# DISPLAY

xrandr --output <CHANGE> --off
xrandr --output <CHANGE> --auto

