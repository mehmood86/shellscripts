#!/bin/sh

cd tmp
for filename in $(ls *.md)
do
    sed -i '/### SEE ALSO/Q' $filename
done

echo "\n# Chemotion CLI\n" > "docs.md"
for filename in "chemotion_*.md";
do
    cat $filename >> "docs.md"
done
cd ..

rm -R tmp
