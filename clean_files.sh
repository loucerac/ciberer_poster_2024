#!/bin/bash

for image_file in $(ls $1/)
do
if grep $image_file *.log -c > 1
then
        echo "File $image_file is in use."
else
        echo "File $image_file is not in use."
        rm "$1/$image_file"
fi
done