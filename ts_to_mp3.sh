#!/bin/bash

### pre condition
# install ffmpeg if not installed.
# brew install ffmpeg


# change space into underscore
find . -type f -name "* *.ts" -exec bash -c 'mv "$0" "${0// /_}"' {} \;

#ts_files=(`ls | egrep '\.ts'`)
ts_files=(*.ts)

for file in ${ts_files[*]}
do
  ffmpeg -i "$file" -f mp3 -acodec mp3 -aq 2 -vn "$file".mp3
done

exit
