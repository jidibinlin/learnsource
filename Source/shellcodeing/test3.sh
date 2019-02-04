#!/bin/bash
test $# -lt 1 && echo "at least one parameter" && exit 1
echo $(grep "^$" $1 | wc -l)
