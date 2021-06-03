#!/data/data/com.termux/files/usr/bin/zsh
#
# This is a termux-url-opener script to do diffrent tasks on my Android phone 

url=$1
echo "YouTube-dl :\nWhat should I do with $url ?"
echo "y) download video to ytdl-folder"
echo "u) download video and convert it to mp3 (music-folder)"
echo "x) nothing"

read -s -k CHOICE
case $CHOICE in
    y)
        echo "Downloading Video With Highest Quality Available\n"
        youtube-dl $url
        read -s -k '?Press any key to continue.'
 ;;
    u)
    echo "Downloading Audio With Highest Quality Available\n"
 youtube-dl --ignore-config -f bestaudio --extract-audio --audio-format mp3  --add-metadata --embed-thumbnail --output "/data/data/com.termux/files/home/storage/shared/Youtube-DL/Music/%(title)s.%(ext)s" $url
 read -s -k '?Press any key to continue.'
 ;;
    x)
        echo "bye"
 ;;
esac
