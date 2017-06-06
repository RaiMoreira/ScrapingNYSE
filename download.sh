#!/bin/bash

function get_stocks(){
  date=$1
  wget -O $date http://www.wsj.com/mdc/public/page/2_3021-activnyse-actives.html
  `sudo python hw9.py $date`
   `$x`
  `rm $date.*`
}
#adds appropriate timestamp
x=0
while [[ $x -le 4 ]]; do
  date="nyse_`date +%Y_%m_%d_%H_%S`.html"  
  get_stocks $date
  sleep 1s
  x=`expr $x + 1`
done

