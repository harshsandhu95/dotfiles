#!/usr/bin/bash

echo "Setting up the environment"

# Install the required packages
yay -S --noconfirm \
	alacritty \
	bat \
	exa \
	fd \
	fzf \
	git \
	neovim \
	nodejs \
	npm \
	python \
	python-pip \
	ripgrep \
	tmux \
	stow

# Install the required python packages
pip install --user pynvim

# Install the required node packages
npm install -g neovim

# Run the stow command to create the symlinks
stow -v -t ~ alacritty tmux nvim
