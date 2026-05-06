#!/bin/bash

#Print all Cities

cities=("Bangalore" "Hyderabad" "Chennai" "Amaravathi")

echo ${cities[@]}

#Print second city

cities=("Bangalore" "Hyderabad" "Chennai" "Amaravathi")

echo ${cities[1]}  # it will pick 2nd index of city and print

#Print total number of cities

cities=("Bangalore" "Hyderabad" "Chennia" "Amaravathi")

echo ${#cities[@]}  # # is used to count all arrays or indexes.

#Print Indexes 

cities=("Bangalore" "Hyderabad" "Chennai" "Amaravathi")

echo ${!cities[@]}  # ! is used print indexes

#Print last index

cities=("Bangalore" "Hyderabad" "Chennai" "Amaravathi")

last_index=$((${#cities[@]} -1))
echo ${cities[$last_index]}





