sudo apt update
sudo apt full-upgrade
sudo apt-get install portaudio19-dev
sudo apt-get install git
git clone https://github.com/rdougla3/Jarvis-rpi.git

cd Jarvis-rpi
python -m venv jvenv
deactivate
source jvenv/bin/activate
pip install --upgrade pip
pip3 install -r requirements.txt
pip3 install -r rpi_requirements.txt
