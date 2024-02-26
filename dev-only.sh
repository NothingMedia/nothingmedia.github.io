#!/bin/bash

os=$(uname)
arch=$(uname -m)

echo "You're on $os with the architecture: $arch. "

if [ -n "$PREFIX" ] && [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    pkg install nodejs python
    pip install flask yt-dlp pytube
    node_version=$(node -v)
    echo "You're on node version: $node_version"
else
    # Otherwise, the user might be using a different environment
    apt install nodejs python
    pip install flask yt-dlp pytube
fi
