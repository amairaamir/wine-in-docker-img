#!/bin/bash

# Add i386 architecture
sudo dpkg --add-architecture i386

# Update package lists
sudo apt-get update

# Install necessary dependencies for Wine
sudo apt-get install -y wine winetricks

# Download and add WineHQ repository key
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

# Add WineHQ repository to package sources
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'

# Update package lists again
sudo apt-get update

# Install WineHQ Stable version
sudo apt-get install -y --install-recommends winehq-stable

# Clean up
rm winehq.key

# Print Wine version
wine --version
