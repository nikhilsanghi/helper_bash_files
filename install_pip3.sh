#!/bin/sh
yes | sudo apt-get update
yes | sudo apt-get -y install python3-pip
pip3 --version
pip install wheel
