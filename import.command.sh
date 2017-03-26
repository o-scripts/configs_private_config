#!/bin/bash
COMMAND_DIR=${LOCAL_CONFIG_DIR}/command
ARCH=`uname`
source ${COMMAND_DIR}/cmd/global.sh
case ${ARCH} in
    'Linux'|'linux'|'LINUX')
        source ${COMMAND_DIR}/cmd/linux.sh
        ;;
    'Darwin'|'darwin'|'DARWIN')
        source ${COMMAND_DIR}/cmd/mac.sh
        ;;
esac
