for f in *.mp3; do

ffmpeg -loop 1 -framerate 2 -i $file_to_retrieve -i "$f"  -vf "scale=320:trunc(ow/a/2)*2"  -c:v libx264 -preset medium -tune stillimage -crf 18 -c:a copy -shortest -pix_fmt yuv420p "${f%.mp3}.mp4"; 
done

find /home/yusadolat/Music -maxdepth 1 -iname '*.mp3' -print0 | xargs -0 mp3wrap ../tmp.mp3




