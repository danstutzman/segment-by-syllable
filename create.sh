#!/bin/bash -ex
for NUMBER in one two three four five six seven eight nine ten; do
  say -r 200 $NUMBER -o $NUMBER.aiff
  sox $NUMBER.aiff -r 44100 $NUMBER.wav pad 0.1 0.1
done

sox 43.wav one.wav \
    44.wav two.wav \
    45.wav three.wav \
    46.wav four.wav \
    47.wav five.wav \
    48.wav six.wav \
    49.wav seven.wav \
    50.wav eight.wav \
    51.wav nine.wav \
    52.wav ten.wav \
    out.wav
afplay out.wav
