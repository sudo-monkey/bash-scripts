#!/bin/bash


echo "getting window pid"
sleep 0.2
echo "inserting into var OUTPUT"
DiscordWindow=$(xdotool search --name 'Discord' |tail -1)
sleep 0.2
echo "displaying var OUTPUT "
echo $DiscordWindow
sleep 0.2
echo "switching window"
xdotool windowactivate $DiscordWindow
sleep 0.2
echo "Initializing.."


CTR=1

while :

do
    ##init round
    echo "Starting round $CTR"
    ##basic tasks - no mouse
    sleep 1
    xdotool type "pls hunt"
    xdotool key KP_Enter
    sleep 1.5
    xdotool type  "pls fish"
    xdotool key KP_Enter
    sleep 1.5
    xdotool type "pls dig"
    xdotool key KP_Enter
    ##mouse action 1
    sleep 1.5
    xdotool type "pls scout"
    xdotool key KP_Enter
    sleep 1.5
    xdotool mousemove 1371 971
    sleep 0.3
    xdotool click 1
    sleep 1.5
    ##mouse action 1
    sleep 1.5
    xdotool type "pls crime"
    xdotool key KP_Enter
    sleep 1.5
    xdotool mousemove 1371 971
    sleep 0.5
    xdotool click 1
    sleep 1.5
    ##CTR+1
    let CTR=CTR+1
    ##sell all
    xdotool type "pls sell"
    xdotool key KP_Enter
    sleep 2
    xdotool mousemove 1470 970
    sleep 0.5
    xdotool click 1
    sleep 2
    ## send all
    xdotool type "pls give all @monkeycoder"
    sleep 0.5
    xdotool key KP_Enter
    xdotool key KP_Enter
    sleep 3
    ## send bank note
    xdotool type "pls gift 1 bank note @monkeycoder"
    xdotool key KP_Enter
    xdotool key KP_Enter
    xdotool mousemove 1470 970
    sleep 1.5
    xdotool click 1
    ##cooling period
    sleep 25
done
