#!/bin/bash

N=5

declare -a diffs=(1 2 3 4 5)

for D in ${diffs[@]}
do
echo $D

./experiment.sh -d $D -s -n $N
./experiment.sh -d $D -s -b -l -n 0
done

mkdir -p ./sudokus/statistics

python statistics.py -d ./sudokus -o ./sudokus/statistics