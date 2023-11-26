#!/bin/bash

## ubuntu 
sudo mkdir /usr/share/fonts/truetype/winfonts
sudo cp font/* /usr/share/fonts/winfonts/

sudo chmod -R 777  /usr/share/fonts/truetype/winfonts
cd /usr/share/fonts/truetype/winfonts
sudo mkfontscale
sudo mkfontdir
sudo fc-cache -fv


