from openai import OpenAI
import sounddevice
import time
from pygame import mixer
import os

os.environ["OPENAI_API_KEY"] = "your key here"

#https://platform.openai.com/playground/assistants
# Initialize the client and mixer
client = OpenAI(default_headers={"OpenAI-Beta": "assistants=v2"})
mixer.init()

def generate_tts(sentence, speech_file_path):
    response = client.audio.speech.create(model="tts-1", voice="echo", input=sentence)
    response.stream_to_file(speech_file_path)
    return str(speech_file_path)

def play_sound(file_path):
    mixer.music.load(file_path)
    mixer.music.play()

def TTS(text):
    speech_file_path = generate_tts(text, "speech.mp3")
    play_sound(speech_file_path)
    while mixer.music.get_busy():
        time.sleep(1)
    mixer.music.unload()
    os.remove(speech_file_path)
    return "done"
