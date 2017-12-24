#!/bin/bash
# das ist ROOT Ordner
export LOCAL_GIT_DIR=${HOME}/develop/branch.git
export LOCAL_WORKS_DIR=${HOME}/works
export LOCAL_SCRIPT_DIR=${LOCAL_WORKS_DIR}/configs/private/scriptfile
export LOCAL_CONFIG_DIR=${LOCAL_WORKS_DIR}/configs/private/config
# end

# software root Ordner
export LOCAL_SOFT_DIR=${LOCAL_SCRIPT_DIR}/software
export LOCAL_LIB_DIR=${LOCAL_SCRIPT_DIR}/libs
# end

# ANDROID Einstellungen
## android Ordner
export ANDROID_DIR=${HOME}/android
## end

## SDK und NDK
export SDK_HOME=${ANDROID_DIR}/android-sdk
export NDK_HOME=${SDK_HOME}/ndk-bundle
## end
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
        m.log.d "[import] import: "$@
        source $file
        m.log.d ${RIGHT} "import: ${file} finished..."
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

m.import ${LOCAL_CONFIG_DIR}/env/import.sh
m.log.v ${RIGHT} "import: env finished..."
# end

# self define command
m.import ${LOCAL_CONFIG_DIR}/command/import.sh
m.log.v ${RIGHT} "import: command finished..."
# end

m.log.v ${RIGHT} "import: config finished..."
