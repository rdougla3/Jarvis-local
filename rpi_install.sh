sudo apt update
sudo apt full-upgrade
pip install --upgrade pip
sudo apt-get install portaudio19-dev
python -m venv jvenv
deactivate
source jvenv/bin/activate
pip3 install -r requirements.txt
