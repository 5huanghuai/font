#!/bin/bash

## archlinux
sudo mkdir /usr/share/fonts/winfonts
sudo cp font/* /usr/share/fonts/winfonts/
cd /usr/share/fonts
sudo mkfontscale
sudo mkfontdir
fc-cache -fv
pr -S nerd-fonts-jetbrains-mono # JetBrainsMono Nerd Font  
pr -S nerd-fonts-sarasa-gothic  # Sarasa Mono CL Nerd Font




