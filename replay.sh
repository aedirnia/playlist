#!/bin/bash
#because i was listening to your songs while working and manually openning them is boring!
#first version: opens the sites manual way
#improve to -> opens the sites from a txt file which is expended with every entry
#every entry is a new line
#->->opens the sites consecutively but only when the song is finished
#how to detect if the song is finished without listing timestamps manually?
#what kind of improvements still can be done?
#hox to close the last tab opened with firefox?
#youtube is not playing automatically :(

var5="https://down2core.com/BlackenTheCursedSun.mp3"
var4="https://down2core.com/Sponge.mp3"
var3="https://down2core.com/28.mp3"
var2="https://down2core.com/EndOfSuffering.mp3"
#heres a song hopefully you'd like
var1="https://www.youtube.com/watch?v=1BjxIsgNMGQ"
rm -f replay.txt
echo -e "$var1\n""$var2\n""$var3\n""$var4\n""$var5" >>replay.txt
times=("0" "313" "155" "186" "94" "377")
j=$( wc -l < replay.txt )
tmp=$( echo "$j"| bc )
echo "$tmp"
for ((i=1;i<tmp+1;i++));
do
echo "$(tail -n"$i" replay.txt | head -n 1)" 
firefox $(tail -n"$i" replay.txt | head -n 1)

sleep ${times[$i]}
done
rm -f replay.txt

#echo "enter number of songs: "
#read nb
#n=$(($nb))
#for ((i=0;i<nb;i++));
#do
#echo "copiez-collez le lien: "
#read link
#songs+=("$link") #i want to first stock all the links then play them
#done
#for ((i=0;i<nb;i++));
#do
#firefox "${songs[$i]}"
	#time
#done
