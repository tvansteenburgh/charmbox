#!/bin/bash
set -e
HOME=/home/ubuntu

# Install next proposed amulet release for testing
sudo add-apt-repository ppa:juju/proposed -y
sudo apt-get update -qqy
sudo apt-get install amulet -qy

sudo apt-get install -qy unzip build-essential charm-tools python-dev python-pip python-virtualenv rsync
sudo pip install bundletester flake8

# Upgrade existing packages
sudo apt-get upgrade -qy

chown -R ubuntu:ubuntu ${HOME}
