#!/bin/bash

sourceType=svg
outputType=eps #if other verify incscape line
docPath=$3
echo "Arguments: $@"
echo "This script allows you to convert all files in this folder from one file type to another."


validInputs=( svg pdf eps );
validOutputs=( eps pdf png );

vailidNr=0;
echo "Allowed file types for source: ${validInputs[@]}"
for input in "${validInputs[@]}"; do
    if [[ "$sourceType" == "$input" ]]; then
        echo "$sourceType present"
        vailidNr=1;
    fi
done

if [[ "$vailidNr" != 1 ]]; then
    echo "Invalid input! Please use one of the following: ${validInputs[@]}"
    exit 1
fi

echo "Allowed file types for output:  ${validOutputs[@]}"
for output in "${validOutputs[@]}";
do
    if [[ "$outputType" == "$output" ]]; then
        echo "$outputType present"
        break
    fi
done

if [[ "$vailidNr" != 1 ]]; then
    echo "Invalid input! Please use one of the following: ${validOutputs[@]}"
    exit 1
fi

dpi=600

find $3 -name "*.$sourceType" | while read line
do
    #name=$(echo $line | cut -f 1 -d '.')
    #name_only=$(echo "$name" | cut -f 2- -d '.')
    name=$(basename $line .svg)
    echo $name

    # inkscape -f "$line" --export-pdf="$name-svg-raw.$outputType" -d $dpi --export-pdf-version=1.5
    inkscape  --export-ignore-filters --export-ps-level=3 $name.$sourceType -o $name.$outputType
done

exit 0
