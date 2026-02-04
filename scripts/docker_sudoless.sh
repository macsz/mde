#!/bin/bash

# Create `docker` group
sudo groupadd docker

# Add current user to `docker` group
sudo usermod -aG docker $USER

# Activated changes to groups
newgrp docker

