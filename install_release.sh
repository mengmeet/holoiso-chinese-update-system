#!/bin/bash
yay -Sy holo-gs-auto-update --noconfirm
curl -Lk https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sed 's#prerelease == "false"#prerelease == "true"#' | sh
zenity --warning --text="软件包：holo-gs-auto-update\n插件：decky\n已经更新完毕" --width=100 --height=100
