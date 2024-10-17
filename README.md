# ollama-quick-start

Ollama quick start is a script that allows users to set up their environmen and install the Ollama (https://ollama.com/) on a local machine using a script. This project is designed to simplify the process of setting up.

## Requirements

To get started with Ollama quick start, you will need:

- A Linux VM (optimal) or a machine running Ubuntu (optional)
- At least 16GB RAM (64GB is optimal)
- At least 130GB storage
- Good internet connection to install everything
- Option to use a cloud-hosted VM or local machine

## Installation

Follow these steps to set up the Flux-AI model script:

1. **Pull the Repository**:
   - git clone [https://github.com/khomotsozwanedev/ollama-quick-start.git](https://github.com/khomotsozwanedev/ollama-quick-start.git)
   - cd ollama-quick-start
2. **make the script file executable**
   - chmod +x llm-base.sh

## Running the installation script

Folllwing these steps to run the script, this will then setup the VM and download the model

1. **run the command**
   - ./llm-base.sh --modelName {["gemma2:2b", "llama3.2"]}
     This will install the chosen model
   - ollama run {["gemma2:2b", "llama3.2"]}
  
Once you have successfully run the command you will be able to install other ollama commands and perform any actions supported by ollama

## Installing and running other ollama models

1. **run this command**
  - ollama stop
  - ollama run {["gemma2:2b", "llama3.2"]}  

## Status
The script works well

## Author
Khomotso Zwane
