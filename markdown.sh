#!/bin/sh

WriteFilesContainingKW(){
    filename=$1
    for file in $(ls *${filename}*.md)
    do
        cat $file >> "../cli-docs.md" && rm $file
    done
}

GenerateMarkdown(){
    cd tmpccli

    for file in $(ls *.md)
    do
        sed -i '/### SEE ALSO/Q' $file
    done

    echo "\n# Chemotion CLI\n" > "../cli-docs.md"

    for file in "chemotion.md chemotion_install.md chemotion_on.md chemotion_off.md chemotion_restart.md"
    do
        cat $file >> "../cli-docs.md" && rm $file
    done

    WriteFilesContainingKW 'instance'
    WriteFilesContainingKW 'advance'

    cd ..
    rm -R tmpccli
}

GenerateMarkdown
