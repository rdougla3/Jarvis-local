#!/bin/bash

error() { echo "ERROR $*"; exit 1; }

SUDO=
if [ "$(id -u)" -ne 0 ]; then
    # Running as root, no need for sudo
    if ! available sudo; then
        error "This script requires superuser permissions. Please re-run as root."
    fi

    SUDO="sudo"
fi

[ "$(uname -s)" = "Linux" ] || error 'This script is intended to run on Linux only.'

sudo apt update
sudo apt full-upgrade
sudo apt-get install portaudio19-dev
sudo apt-get install git
sudo apt-get install python3-full -y

git clone https://github.com/rdougla3/Jarvis-rpi.git
cd Jarvis-rpi
python -m venv jvenv
deactivate
ls
source jvenv/bin/activate
pip install --upgrade pip
pip3 install -r requirements.txt
pip3 install -r rpi_requirements.txt
