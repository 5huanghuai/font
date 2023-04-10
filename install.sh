#!/bin/bash

sudo mkdir /usr/share/fonts/winfonts
sudo cp font/* /usr/share/fonts/winfonts/
cd /usr/share/fonts
sudo mkfontscale
sudo mkfontdir
fc-cache -fv


# 中文 文泉驿、思源字体
sudo pacman -S wqy-microhei wqy-bitmapfont wqy-zenhei wqy-microhei-lite
sudo pacman -S adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts
#西文字体推荐使用dejavu、noto
sudo pacman -S ttf-dejavu
sudo pacman -S noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk


# 设置编程中，默认的中文字体为文泉驿正黑
mkdir ~/.config/fontconfig

#将如下内容写进文件
#vim ~/.config/fontconfig/fonts.conf


# <?xml version='1.0'?>
# <!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
# <fontconfig>
#
#   <alias>
#     <family>sans-serif</family>
#     <prefer>
# 	  <family>WenQuanYi Micro Hei</family>
# 	  <family>WenQuanYi Zen Hei</family>
# 	  <family>WenQuanYi Zen Hei Sharp</family>
#     </prefer>
#   </alias>
#
#   <alias>
#     <family>serif</family>
#     <prefer>
#       <family>WenQuanYi Micro Hei Lite</family>
#     </prefer>
#   </alias>
#
#   <alias>
#     <family>monospace</family>
#     <prefer>
# 	  <family>WenQuanYi Micro Hei Mono</family>
# 	  <family>WenQuanYi Zen Hei Mono</family>
#     </prefer>
#   </alias>
#
# </fontconfig>
#
#
