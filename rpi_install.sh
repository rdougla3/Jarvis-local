sudo apt update
sudo apt full-upgrade
sudo apt-get install portaudio19-dev
sudo apt-get install git
git clone https://github.com/rdougla3/Jarvis-rpi.git

python -m venv Jarvis-rpi/jvenv
deactivate
source Jarvis-rpi/jvenv/bin/activate
pip install --upgrade pip
pip3 install -r Jarvis-rpi/requirements.txt
pip3 install -r Jarvis-rpi/rpi_requirements.txt
