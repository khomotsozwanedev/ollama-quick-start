#!/bin/bash

echo <<< "=============================================================\nLLM Base\n*\n* Getting started running the install script to get started \n* with the required LLM installation and environment set up\n\n============================================================="

# Update the package list
sudo apt-get update

# Upgrade installed packages
sudo apt-get upgrade -y

# Install general tools
sudo apt-get install -y build-essential curl wget git
sudo apt-get install -y vim nano
sudo apt-get install -y net-tools
sudo apt-get install -y htop
sudo apt install -y unzip
sudo apt install -y zip
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt-get install -y python3.10
sudo apt install -y python3.10-venv
sudo apt install -y python3-pip
sudo apt-get install -y libgl1-mesa-glx
python3 --version
sudo apt-get autoremove -y
sudo apt-get clean

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# Get started with the set up
echo <<< "=============================================================\nSet up\n*\n* General tooling and environment set up completed successfull. Beginning the LLM set up\n\n============================================================="



# Download ollama
curl -fsSL https://ollama.com/install.sh | sh

netstat -lnp

ollama stop

# Initialize variables
modelName=""


while [[ "$#" -gt 0 ]]; do
    case $1 in
        --modelName) modelName="$2"; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done


if [ -z "$modelName" ]; then
    echo "model name is required. e.g. [llama3.2, gemma2:2b ] Use --modelName to provide it."
    exit 1
fi



ollama pull $modelName # ollama run $modelName

echo "Downloaded model: $modelName"

ollama list

echo <<< "=============================================================\nModel ready\n*\n* Please type your prompt\n\n============================================================="

ollama serve








