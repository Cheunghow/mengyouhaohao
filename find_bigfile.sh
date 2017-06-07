#!/bin/bash
cat <<Menu

>>>>>>>>>>>>>>>>>>>>CHECK BIG DIRECTORY and FILE<<<<<<<<<<<<<<<<<<<<<<< 

Menu

du -ag|sort -rn|awk '{if ($1>=5) print}'|sort -k 2|awk '{if (NR>2) print}'   
