#!/bin/bash
if [ -z "$1" ];
   then 
          echo "usage: $0 directory"
          exit 1
fi
directory="$1"
for file in "$directory"/*.txt;
do 
          if [ -f "$file" ];
                 then 
                           filename=$(basename "$file")    
                           mv "$file" "$directory/old_$filename" 
          fi
done   
echo "All .txt files have been renamed with the prefix old_"
