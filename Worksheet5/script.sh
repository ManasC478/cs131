#!/bin/bash

file=$1
IFS=$'\n'
for line in $(cat "$file"); do
  country_category=`echo $line | cut -d ',' -f 5,8`
  IFS=',' read -r category country <<< $country_category
  if [ "$country" == "United States" ]; then
    filepath="United States/$category.txt"
    echo "$line" >> "$filepath"
  fi
done < "$file"
`wc -l United\ States/Music.txt >> ws5.txt`
`wc -l United\ States/Entertainment.txt >> ws5.txt`
`wc -l United\ States/Gaming.txt >> ws5.txt`
`wc -l United\ States/Comedy.txt >> ws5.txt`
