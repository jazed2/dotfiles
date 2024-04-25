# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf 
    if [[ -f $tmp ]]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [[ -d $dir ]] && [[ $dir != $(pwd) ]] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Change Brightness of screen and bind it to ctrl-b
change_brightness () {
    echo 'Enter Value [9-937]: '
    read bg_light
    if  (($bg_light < 9 && $bg_light > 937)) ; then
        echo "Enter valid value (9 for dimmest, 937 for brightest"
    else
       cat /sys/class/backlight/intel_backlight/brightness > /tmp/OldBrightness
       echo $bg_light | sudo tee /sys/class/backlight/intel_backlight/brightness > /dev/null 2>&1 
    fi
}
bindkey -s '^b' 'change_brightness\n'

# Lazy git functions because why not?
lazyg () {
    git add .
    git commit -m $1
    git push
}

