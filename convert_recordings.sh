#!/bin/bash
for file in ./recordings/*.flv; do
  output_file="./recordings/$(basename "$file" .flv).mp4"
  ffmpeg -i "$file" -c:v libx264 -c:a aac "$output_file"
  rm "$file" # Optionally, delete the original FLV file after conversion
done