#!/bin/bash

CONFIG_DIR="/media/ahmed/Data/dotfiles/.config/neofetch/configs"

SELECTED_CONFIG=$(find "$CONFIG_DIR" -name "config_*.conf" | shuf -n 1)

neofetch --config "$SELECTED_CONFIG"
