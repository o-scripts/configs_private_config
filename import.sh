#!/bin/bash
# das ist ROOT Ordner
export BRANCH_GIT=~/develop/branch.git
export LOCAL_WORKS_DIR=${HOME}/works
export MSHELL=${LOCAL_WORKS_DIR}/configs/private/scriptfile
export LOCAL_CONFIG_DIR=${LOCAL_WORKS_DIR}/configs/private/config

# end

# unterscheidliche Einstellungen
m.log.d()
{
	if [ "$DEBUG_ON" = "$DEBUG" ]; then
    	echo -e "\x1B[1;37m\x1B[42m$@\x1B[0m"
	fi
    return ${RET_RUNNING_OK}
}

# some global function, and variables
# m.log.d source ${LOCAL_CONFIG_DIR}/env/settings.sh
source ${LOCAL_CONFIG_DIR}/env/settings.sh
m.log.d source ${LOCAL_CONFIG_DIR}/env/color.sh
source ${LOCAL_CONFIG_DIR}/env/color.sh
m.log.d source ${LOCAL_CONFIG_DIR}/env/code.sh
source ${LOCAL_CONFIG_DIR}/env/code.sh
m.log.d source ${LOCAL_CONFIG_DIR}/env/log.sh
source ${LOCAL_CONFIG_DIR}/env/log.sh
# end

# import git bash config
m.log.d source ${LOCAL_CONFIG_DIR}/env/bash/git-prompt.sh
source ${LOCAL_CONFIG_DIR}/env/bash/git-prompt.sh
# m.log.d source ${LOCAL_CONFIG_DIR}/env/bash/git-completion.bash
# source ${LOCAL_CONFIG_DIR}/env/bash/git-completion.bash
# end

m.log.v works/configs/private/config - import.env.sh --ok
m.import ${LOCAL_CONFIG_DIR}/import.env.sh
# end

# self define command
m.log.v works/configs/private/config - import.command.sh --ok
m.import ${LOCAL_CONFIG_DIR}/import.command.sh
# end
