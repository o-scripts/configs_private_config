#!/bin/bash
## global settings
ENV_URL="https://git.oschina.net/mr.z/configs_private_config_env.git"
ENV_LOCAL="env"
COMMAND_URL="https://git.oschina.net/mr.z/configs_private_config_command.git"
COMMAND_LOCAL="command"

## task list
doTask(){
    echo git clone ${ENV_URL} ${ENV_LOCAL}
    git clone ${ENV_URL} ${ENV_LOCAL}
    echo git clone ${COMMAND_URL} ${COMMAND_LOCAL}
    git clone ${COMMAND_URL} ${COMMAND_LOCAL}
}

## just do it
doTask

