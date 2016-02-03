#!/bin/bash

#color strings 1 to 5
color1=$1
color2=$2
color3=$3
color4=$4
color5=$5

#boolean for numbers of rings
fourRings=false


#check if resistor has 4 or 5 rings
function chkFourRings {

if [[ -z "$color5" ]]
then
  fourRings=true
else
  fourRings=false
fi

}


function calcFourRings {

#first ring

if [[ $color1 == "brown" ]]
then
  digit1=1
elif [[ $color1 == "red" ]]
then
  digit1=2
elif [[ $color1 == "orange" ]]
then
  digit1=3
elif [[ $color1 == "yellow" ]]
then
  digit1=4
elif [[ $color1 == "green" ]]
then
  digit1=5
elif [[ $color1 == "blue" ]]
then
  digit1=6
elif [[ $color1 == "purple" ]]
then
  digit1=7
elif [[ $color1 == "grey" ]]
then
  digit1=8
elif [[ $color1 == "white" ]]
then
  digit1=9
fi

#second ring

if [[ $color2 == "brown" ]]
then
  digit2=1
elif [[ $color2 == "red" ]]
then
  digit2=2
elif [[ $color2 == "orange" ]]
then
  digit2=3
elif [[ $color2 == "yellow" ]]
then
  digit2=4
elif [[ $color2 == "green" ]]
then
  digit2=5
elif [[ $color2 == "blue" ]]
then
  digit2=6
elif [[ $color2 == "purple" ]]
then
  digit2=7
elif [[ $color2 == "grey" ]]
then
  digit2=8
elif [[ $color2 == "white" ]]
then
  digit2=9
elif [[ $color2 == "black" ]]
then
  digit2=0

fi


#third ring

if [[ $color3 == "brown" ]]
then
  digit3=10
elif [[ $color3 == "red" ]]
then
  digit3=100
elif [[ $color3 == "orange" ]]
then
  digit3=1000
elif [[ $color3 == "yellow" ]]
then
  digit3=10000
elif [[ $color3 == "green" ]]
then
  digit3=100000
elif [[ $color3 == "blue" ]]
then
  digit3=1000000
elif [[ $color3 == "purple" ]]
then
  digit3=10000000
elif [[ $color3 == "grey" ]]
then
  digit3=100000000
elif [[ $color3 == "white" ]]
then
  digit3=1000000000
elif [[ $color3 == "black" ]]
then
  digit3=1
elif [[ $color3 == "gold" ]]
then
  digit3=0.1
elif [[ $color3 == "silver" ]]
then
  digit3=0.01

fi


#fourth ring

if [[ $color4 == "n/a" ]]
then
  digit4="20%"
elif [[ $color4 == "silver" ]]
then
  digit4="10%"
elif [[ $color4 == "gold" ]]
then
  digit4="5%"

fi


firstResult=$digit1 & $digit2

echo $firstResult



}

function calcFiveRings {
echo five
}


#begin of actual script

chkFourRings

if [[ $fourRings == true ]]
then
  calcFourRings
elif [[ $fourRings == false ]]
then
  calcFiveRings
else
  #Error
echo Error
fi
