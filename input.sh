#!/bin/bash
# put your deviec name istead of "Razer Razer DeathAdder 2013" and try to play with $7 number its a part of a string in xinput --list output it should be an id of your device;
ids=$(xinput --list | awk '/Razer Razer DeathAdder 2013 .*pointer/ {print $7}' | sed 's/id=\(.*\)/\1/')
#ids is a list of your ids
for id in $ids
do 
  #just do a command with your device's id 
  xinput --set-prop $id "Device Accel Constant Deceleration" 7
  #I don't need this 
  #xinput --set-prop $id "Device Accel Velocity Scaling" 100
done

#that's keyboard settings
xset r rate  200 50