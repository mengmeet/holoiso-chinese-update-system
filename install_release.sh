#!/bin/bash
#set -x

# holo-gs-auto-update
yay -Sy holo-gs-auto-update --noconfirm
if [[ "$?" == "0" ]]; then
	yay_status=更新完毕
else
	yay_status=更新失败
fi

# decky
curl -Lk https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sed 's#prerelease == "false"#prerelease == "true"#' | sudo sh
if [[ "$?" == "0" ]]; then
        decky_status=更新完毕
else
	decky_status=更新失败
fi

# tomoon
curl -L http://i.ohmydeck.net | sh
if [[ "$?" == "0" ]]; then
        tomoon_status=更新完毕
else
	tomoon_status=更新失败
fi

zenity --warning --text="软件包：holo-gs-auto-update $yay_status \n插件主程序：decky $decky_status \n插件：toomon $tomoon_status \n全部更新脚本已执行完毕" --width=100 --height=100
