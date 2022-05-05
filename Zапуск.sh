clear
pkg install fish pv mpv figlet -y; pip2 install lolcat
rm -rf /data/data/com.termux/files/usr/etc/motd
cp -r thunter /data/data/com.termux/files/usr/etc
mkdir /data/data/com.termux/files/home/.config/fish/functions
touch /data/data/com.termux/files/home/.config/fish/functions/fish_prompt.fish
clear
printf "

                   DNC
                   Termux Banner"|lolcat
printf "ПУМ ПУРУМ

"|lolcat pv -qL 15
printf ''

echo "if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
command_not_found_handle() {
/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}
fi
mpv /data/data/com.termux/files/usr/etc/audio/salam.mp3
clear
bash /data/data/com.termux/files/usr/etc/thunter
echo '$uname'|lolcat -a -s 99 -d 300
figlet '$uname'|lolcat
fish" > /data/data/com.termux/files/usr/etc/bash.bashrc
echo "# name: Fish
function _is_git_dirty
echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end
function fish_prompt
set_color -o red
printf '╭═════════════>> '
set_color -o red
printf '$cnm'
set_color -o red
printf ' <<═══════════'
set_color -o red
printf '══▶'
echo
set_color -o red
printf '|═>{'
set_color -o yellow
printf '%s' (prompt_pwd)
set_color -o red
printf '}'
echo
set_color -o red
printf '╰══'
set_color -o blue
printf '%s' (__fish_git_prompt)
if [ (_is_git_dirty) ]
set_color -o blue
printf '* '
end
set_color -o red
printf '═▶▶▶'
set_color normal
end" > /data/data/com.termux/files/home/.config/fish/functions/fish_prompt.fish
echo "function fish_greeting
printf '  
'
end
function __fish_command_not_found_handler --on-event fish_command_not_found
/data/data/com.termux/files/usr/libexec/termux/command-not-found $argv[1]
end" > /data/data/com.termux/files/usr/etc/fish/config.fish
echo "Banner Setup Done"|lolcat -a -s 99 -d 200
echo  -e " АЛО ТЕРМУКС РЕСТАРТ"|pv -qL 15
