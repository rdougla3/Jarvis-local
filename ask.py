import json
import subprocess
import sys
from time import sleep

'''
python actuator for ollama server via bash
https://github.com/ollama/ollama
'''

model = "moondream"
api=["./pull_model.sh", model]
response = subprocess.run(api)
api=["./ask_model.sh", model]
response = subprocess.run(api)

def ask_question_memory(text):
    response = subprocess.run(api + [(text)],  capture_output = True, text = True)
    response = json.loads(response.stdout)
    response = response['response']
    return(response)
    

def main():
    while(True):
        print("\ninput:")
        print(ask_question_memory(input()))
        sleep(0.25)

if __name__ == "__main__":
    sys.exit(main())