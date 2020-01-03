#!/bin/bash
## global settings
ENV_URL="https://github.com/GdZ/configs_private_config_env.git"
ENV_LOCAL="env"
COMMAND_URL="https://github.com/GdZ/configs_private_config_command.git"
COMMAND_LOCAL="command"
ZSH_URL="https://github.com/GdZ/oh-my-zsh.git"
ZSH_LOCAL="oh-my-zsh"
BASH_URL="https://github.com/GdZ/oh-my-bash.git"
BASH_LOCAL="oh-my-bash"
VIM_URL="https://github.com/GdZ/spf13-vim.git"
VIM_LOCAL="spf13-vim-3"
FONT_URL="https://github.com/powerline/fonts.git"
FONT_LOCAL="fonts/powerline"
## task list
doTask(){
    echo git clone ${ENV_URL} ${ENV_LOCAL}
    git clone ${ENV_URL} ${ENV_LOCAL}
    echo git clone ${COMMAND_URL} ${COMMAND_LOCAL}
    git clone ${COMMAND_URL} ${COMMAND_LOCAL}
    echo git clone ${ZSH_URL} ${ZSH_LOCAL}
    git clone ${ZSH_URL} ${ZSH_LOCAL}
    echo git clone ${BASH_URL} ${BASH_LOCAL}
    git clone ${BASH_URL} ${BASH_LOCAL}
    echo git clone ${VIM_URL} ${VIM_LOCAL}
    git clone ${VIM_URL} ${VIM_LOCAL}
    echo git clone ${FONT_URL} ${FONT_LOCAL}
    git clone ${FONT_URL} ${FONT_LOCAL}
}

## just do it
doTask

