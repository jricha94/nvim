#!/usr/bin/sh

rm ~/.local/share/nvim/site/pack/packer/start/Colorschemes/colors/starlight.vim
rm -r ~/.local/share/nvim/site/pack/packer/start/Colorschemes/lua/starlight/

python3 ez.py starlight.yml

cp ./starlight/colors/starlight.vim ~/.local/share/nvim/site/pack/packer/start/Colorschemes/colors
cp -r ./starlight/lua/starlight/ ~/.local/share/nvim/site/pack/packer/start/Colorschemes/lua/

