#!/bin/bash
for file in $(`find . -type f -name "*.mp3"` ); do
ffmpeg -i "concat:intro.mp3|"$file"|outro.mp3" -acodec copy "${file%.mp3}-".mp3;
done
