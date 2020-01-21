#!/bin/bash
ext=$(echo $1|sed 's/^.*\.//')
echo $ext
path=$1
if [[ "$ext" == "mp3" || "$ext" == "mp4" || "$ext" == "mkv" || "$ext" == "avi" || "$ext" == "wav" || "$ext" == "mkv" || "$ext" == "flv" || "$ext" == "3gp" || "$ext" == "3gp2" || "$ext" == "3gpp" || "$ext" == "m4a" || "$ext" == "m4v" || "$ext" == "f4v" || "$ext" == "f4a" || "$ext" == "wma" || "$ext" == "wmv" || "$ext" == "mjpeg" || "$ext" == "XviD" ]];
then
sudo apt install vlc
vlc $path &
exit
elif [[ "$ext" == "jpg" || "$ext" == "png" || "$ext" == "bmp" || "$ext" == "jpeg" || "$ext" == "gif" || "$ext" == "tif" ]];
then
eog $path &
exit
elif [[ "$ext" == "pdf" || "$ext" == "ps" || "$ext" == "dvi" || "$ext" == "PS" || "$ext" == "PDF" || "$ext" == "XPS" || "$ext" == "cbr" || "$ext" == "cbz" || "$ext" == "cb7" || "$ext" == "cbt" || "$ext" == "djvu" ]];
then
evince $path & 
exit
elif [[ "$ext" == "java" || "$ext" == "c" || "$ext" == "cpp" || "$ext" == "c++" || "$ext" == "txt" || "$ext" == "sh" || "$ext" == "py" || "$ext" == "python" || "$ext" == "info" || "$ext" == "lst" || "$ext" == "pl" || "$ext" == "rpt" || "$ext" == "gpx" || "$ext" == "conf" || "$ext" == "m" ]];
then
gedit $path &
exit
elif [[ "$ext" == "html" || "$ext" == "xml" || "$ext" == "js" || "$ext" == "css" || "$ext" == "htm" || "$ext" == "html5" ]];
then
firefox $path & 
fi
exit
