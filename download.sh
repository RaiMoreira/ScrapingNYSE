#!/bin/bash

#Write a Bash script to download the stock web page every minute for an #hour. Make sure you do this between 9:30 am and 4 pm when the values #change. Your bash script will call a python program. 

function get_stocks(){
  date=$1
  wget -O $date http://www.wsj.com/mdc/public/page/2_3021-activnyse-actives.html
  `sudo python hw9.py $date`
   `$x`
  `rm $date.*`
}

x=0
while [[ $x -le 4 ]]; do
  date="nyse_`date +%Y_%m_%d_%H_%S`.html"  
  get_stocks $date
  sleep 1s
  x=`expr $x + 1`
done

