#!/usr/bin/env bash
set -euo pipefail

BLUE='\e[34m'
NC='\e[0m'
WORKING_DIR=$(echo $(pwd))
YOUTUBEDL_OUTPUT_FOLDER="${WORKING_DIR}/storage/shared/Youtube-DL"
YOUTUBEDL_MUSIC_OUTPUT_FOLDER="${WORKING_DIR}/storage/shared/Youtube-DL/Music"
YOUTUBEDL_CONFIG_FOLDER="${WORKING_DIR}/.config/youtube-dl/"
TERMUXURLOPENER_CONFIG_FOLDER="${WORKING_DIR}/bin/"

echo "Halo, Script ini akan melakukan instalasi untuk mengunduh video dari berbagai website"
sleep 1
echo -e "\n\n${BLUE}Persyaratan :"
echo -e "${NC}    1. Mengizinkan Akses Pada Penyimpanan"
echo -e "${NC}    2. Koneksi Internet Yang Stabil.\n\n"
read -p "Tekan Enter Untuk Melanjutkan:"

# Basic setup
termux-setup-storage
sleep 2
apt-get update
apt-get -y install python ffmpeg zsh
pip install youtube-dl
mkdir -p $YOUTUBEDL_OUTPUT_FOLDER
mkdir -p $YOUTUBEDL_CONFIG_FOLDER
mkdir -p $YOUTUBEDL_MUSIC_OUTPUT_FOLDER
mkdir -p $TERMUXURLOPENER_CONFIG_FOLDER
# Download setup & config file
curl -L https://raw.githubusercontent.com/PointVoider/termux-youtube-dl/master/.ytdl.conf > "${YOUTUBEDL_CONFIG_FOLDER}/config"
curl -L https://raw.githubusercontent.com/PointVoider/termux-youtube-dl/master/share2youtubedl.sh > "${TERMUXURLOPENER_CONFIG_FOLDER}/termux-url-opener"

echo -e "${BLUE}Selamat!!! Instalasi Selesai.\n\n"
echo -e "${BLUE}Tekan Bagikan lalu pilih Termux pada video yang mau di unduh.\n\n"
read -p "Tekan Enter Untuk Melanjutkan"
