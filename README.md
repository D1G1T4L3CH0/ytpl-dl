# ytpl-dl
Very simple script template for downloading youtube playlists.

## Installation
Just download the script wherever you want it. Then make it executable.

## Configuration
Open the script in an editor and modify the variables. There is only one variable to change ot make it work. That is DOWNLOAD_DIR. Set it to the path where you want the videos stored. After that you can modify two other variables to indicate what you want downloaded. They are URL and SUBDIRECTORY. The URL variable is the url of the playlist to download. The SUBDIRECTORY variable is the subdirectory of the DOWNLOAD_DIR you want this specific playlist to be downloaded to.

If you want more playlists downloaded, then just copy and paste the first example as many times as you like. This example looks like this:
```
# YouTube Trending
URL="https://youtube.com/playlist?list=PLbpi6ZahtOH5HX_pLnnlm9Ps0TaDPzO9i"
SUBDIRECTORY="trending"
yt-dlp $1 --ignore-errors --prefer-ffmpeg --write-description --download-archive archive.file --output "${DOWNLOAD_DIR}/${SUBDIRECTORY}/%(uploader)s/%(title)s-%(id)s.%(ext)s" --add-metadata --write-auto-sub --embed-subs $URL
```
Just change the variables on each to whatever you want. You may also want to modify the comment of each one.
