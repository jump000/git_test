#! /bin/bash/
notify-send "Focus."

#SECONDS=0 #seconds since the proc is up.
m_max=24 m_now=0
t="date +%T" #set CMD to print time in format: YYYY-MM-DD-HH:MM:SS
d="date +%F" 
d_prev=$($d)
echo $d_prev

while [ $m_now -le $m_max ]
do
    d_now=$($d)
    if [[ $d_prev -ne $d_now ]]; then d_prev=$d_now; echo $d_prev;fi;
    echo $m_now". "$($t) #exec CMD in t
    sleep 1m
#    echo $(($SECONDS/60))"m has passed."
    ((m_now++))
done

notify-send "take a break, sip a tea :3"
