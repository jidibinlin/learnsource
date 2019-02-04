#!/bin/bash
line1=$(cat $1 | grep "^$" | wc -l)

echo $line1

line2=$(cat $2 | grep "^$" | wc -l)
echo $line2

let sum=$line1+$line2

echo $sum
