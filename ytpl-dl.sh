#!/bin/bash
# This script requires yt-dlp. You can download it here:
# https://github.com/yt-dlp/yt-dlp

# Change this to the directory you want to save the videos into.
readonly DOWNLOAD_DIR="/home/user/youtube"

# YouTube Trending
URL="https://youtube.com/playlist?list=PLbpi6ZahtOH5HX_pLnnlm9Ps0TaDPzO9i"
SUBDIRECTORY="trending"
yt-dlp $1 --ignore-errors --prefer-ffmpeg --write-description --download-archive archive.file --output "${DOWNLOAD_DIR}/${SUBDIRECTORY}/%(uploader)s/%(title)s-%(id)s.%(ext)s" --add-metadata --write-auto-sub --embed-subs $URL
