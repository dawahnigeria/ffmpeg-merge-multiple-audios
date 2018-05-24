
while IFS= read -r -d '' file; do
    : do ffmpeg -i "concat:intro.mp3|$file|outro.mp3" -acodec copy "${file%.mp3}-".mp3;
done < <(find . -type f -name "*.mp3" -print0)
