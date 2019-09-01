#!/bin/bash

number_of_lines=20
n=$number_of_lines
file_lines_count=$(wc -l < clients.csv)
echo $file_lines_count
for (( c=1; c<=$file_lines_count; c=$number_of_lines ))
do
    sed -n '$c,$n' clients.csv > clients1.csv
    n+=number_of_lines
done
