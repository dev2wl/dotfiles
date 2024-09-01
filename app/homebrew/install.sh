#!/bin/bash

# Check if Homebrew is already installed
if ! command -v brew &> /dev/null
then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

# Homebrew bundle (this path only for install from root directory of dotfiles)
brew bundle --verbose --file ./app/homebrew/Brewfile
