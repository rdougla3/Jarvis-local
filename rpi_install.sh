sudo apt update
sudo apt full-upgrade
sudo apt-get install portaudio19-dev
python -m venv jvenv
deactivate
source jvenv/bin/activate
pip install --upgrade pip
pip3 install -r Jarvis-local/requirements.txt
pip3 Jarvis-local/rpi_requirements.txt
