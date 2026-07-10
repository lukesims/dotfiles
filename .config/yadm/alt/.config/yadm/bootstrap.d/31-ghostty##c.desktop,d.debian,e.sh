#!/bin/bash

set -e

sudo add-apt-repository ppa:mkasberg/ghostty-ubuntu
sudo apt-get update
sudo apt-get install -y ghostty
