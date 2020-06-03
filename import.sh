#!/bin/bash

# working space
export LOCAL_WORKING=${HOME}/working

# das ist ROOT Ordner
export LOCAL_GIT_DIR=${HOME}/develop/branch.git
export LOCAL_WORKS_DIR=${HOME}/works
export LOCAL_SCRIPT_DIR=${LOCAL_WORKS_DIR}/configs/private/scriptfile
export LOCAL_CONFIG_DIR=${LOCAL_WORKS_DIR}/configs/private/config
export LOCAL_ENV_DIR=${LOCAL_WORKS_DIR}/configs/private/config/env
export LOCAL_COMMAND_DIR=${LOCAL_WORKS_DIR}/configs/private/config/command
# end

# software root Ordner
export LOCAL_SOFT_DIR=${LOCAL_SCRIPT_DIR}/software
export LOCAL_LIB_DIR=${LOCAL_SCRIPT_DIR}/libs
# end

# global var
# export RIGHT="${COLOR_NC}[${BGREEN} ✔ ${COLOR_NC}]"
# export ERROR="${COLOR_NC}[${BRED} ✗ ${COLOR_NC}]"
# end

export DEBUG_ON=true
export DEBUG_OFF=false
export DEBUG=${DEBUG_OFF}
# export DEBUG=${DEBUG_ON}

# end

function m.git()
{
    git branch 2>/dev/null | grep \* | awk '{print $2" *"}'
}

g.log.d()
{
	if [ "$DEBUG_ON" = "$DEBUG" ]; then
    	echo -e "[\x1B[1;37m\x1B[42mg.D\x1B[0m] $@"
	fi
    return ${RET_RUNNING_OK}
}

g.import()
{
    file=$1
    if [[ -f $file ]]; then
        g.log.d "g.import: "$@
        source $file
        g.log.d ${RIGHT} "g.import: ${file} finished..."
    else
        g.log.d ${ERROR} "'"$file"'" not exist!!!
    fi
}

#cd ${LOCAL_WORKING}

source ${LOCAL_CONFIG_DIR}/env/import.sh
#g.import ${LOCAL_CONFIG_DIR}/env/import.sh
m.log.d ${RIGHT} "import: env finished..."
# end

# self define command
m.import ${LOCAL_CONFIG_DIR}/command/import.sh
m.log.d ${RIGHT} "import: command finished..."
# end

m.log.d ${RIGHT} "import: config finished..."
