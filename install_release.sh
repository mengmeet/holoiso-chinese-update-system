#!/bin/bash
yay -Sy holo-gs-auto-update --noconfirm
curl -Lk https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sed 's#prerelease == "false"#prerelease == "true"#' | sh
zenity --warning --text="Update finished!" --width=100 --height=50
