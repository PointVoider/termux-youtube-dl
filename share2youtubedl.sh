#!/data/data/com.termux/files/usr/bin/zsh
#
# This is a termux-url-opener script to do diffrent tasks on my Android phone 

url=$1
echo "YouTube-dl :\nApa yg harus dilakukan pada link $url ?"
echo "y) unduh video dengan kualitas tertinggi"
echo "u) unduh video kemudian ubah menjadi mp3 (musik)"
echo "x) tidak ada"

read -s -k CHOICE
case $CHOICE in
    y)
        echo "Mulai mengunduh video dengan kualitas terbaik yang tersedia\n"
        youtube-dl $url
        read -s -k '?Press any key to continue.'
 ;;
    u)
    echo "Mulai mengunduh musik dengan kualitas terbaik yang tersedia\n\n"
 youtube-dl --ignore-config -f bestaudio --extract-audio --audio-format mp3  --add-metadata --embed-thumbnail --output "/data/data/com.termux/files/home/storage/shared/Youtube-DL/Music/%(title)s.%(ext)s" $url
 read -s -k '?Press any key to continue.'
 ;;
    x)
        echo "bye"
 ;;
esac
