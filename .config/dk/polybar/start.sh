#!/bin/sh

DIR=$HOME/.config/dk/polybar/

polybar -c $DIR/config left &
polybar -c $DIR/config center &
polybar -c $DIR/config right &
