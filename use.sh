#!/bin/bash
for file in *.mp3; do
eyeD3 --add-image="pic.png":FRONT_COVER "${file%.mp3}".mp3
done





