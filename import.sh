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
m.import()
{
    file=$1
    if [[ -f $file ]]; then
        m.log.d "[import] import: "$@${COLOR_NC} [${BRED}✔︎${COLOR_NC}]
        source $file
    else
        m.log.w "'"$file"'" not exist!!!
    fi
}

# some global function, and variables
m.import ${LOCAL_CONFIG_DIR}/env/settings.sh
m.import ${LOCAL_CONFIG_DIR}/env/color.sh
m.import ${LOCAL_CONFIG_DIR}/env/code.sh
m.import ${LOCAL_CONFIG_DIR}/env/log.sh
# end

# global var
export RIGHT="${COLOR_NC}[${BGREEN} ✔ ${COLOR_NC}]"
export ERROR="${COLOR_NC}[${BRED} ✗ ${COLOR_NC}]"
# end

# import git bash config
case `uname` in
    Darwin)
        m.import ${LOCAL_CONFIG_DIR}/env/bash/git-prompt.sh
        # m.import ${LOCAL_CONFIG_DIR}/env/bash/git-completion.bash
        m.import ${LOCAL_CONFIG_DIR}/env/bash/bash_completion
        ;;
    'Linux')
        ;;
esac
# end

m.log.v ${RIGHT} "import: env"
m.import ${LOCAL_CONFIG_DIR}/import.env.sh
# end

# self define command
m.log.v ${RIGHT} import: command
m.import ${LOCAL_CONFIG_DIR}/import.command.sh
# end

m.log.v ${RIGHT} import: config
