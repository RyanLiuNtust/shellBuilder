#bash color setting https://wiki.archlinux.org/index.php/Color_Bash_Prompt

function color_my_prompt {
    local _user_="\[\e[1;36m\]\u@\h"
    local _location_="\[\e[1;33m\]\w"
    local _git_branch_color="\[\e[1;31m\]"
    local _git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local _command_color="\[\e[1;37m\]"
    export PS1="$_user_ $_location_$_git_branch_color $_git_branch$_command_color"
}
color_my_prompt
