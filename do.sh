
for file in $(find . -type f -name "*.mp3"); do
ffmpeg -i "$file" -ar 8000 -b:a 32k -ac 1 "${file%.mp3}".amr;
 done

