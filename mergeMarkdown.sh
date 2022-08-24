#!/bin/bash

cd tmp
for filename in "*.md"
do
    sed -i '/### SEE ALSO/Q' $filename
done

echo "\n# Chemotion CLI\n" > "docs.md"
for filename in "chemotion_*.md";
do
    cat $filename >> "docs.md"
done
cd ..
