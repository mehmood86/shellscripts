#!/bin/bash

for filename in "*.md"
  do    
    sed -i '/### SEE ALSO/Q' $filename
  done

echo "\n# Chemotion CLI\n" > "chemotion.md"
for filename in "*.md"; 
  do
    cat "$filename" >> "docs.md"  
  done
