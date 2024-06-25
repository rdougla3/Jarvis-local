#!/bin/bash

error() { echo "ERROR $*"; exit 1; }

[ "$(uname -s)" = "Linux" ] || error 'This script is intended to run on Linux only.'

sudo apt update -y
sudo apt full-upgrade -y
sudo apt-get install portaudio19-dev -y
sudo apt-get install git -y
sudo apt-get install python3-full -y

git clone https://github.com/rdougla3/Jarvis-rpi.git
cd Jarvis-rpi
python -m venv jvenv
jvenv/bin/pip install --upgrade pip
jvenv/bin/pip3 install -r requirements.txt
jvenv/bin/pip3 install -r rpi_requirements.txt
