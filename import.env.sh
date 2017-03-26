#!/bin/bash
ARCH=`uname`
# unterscheidliche Einstellungen
source ${LOCAL_CONFIG_DIR}/env/global.sh
source ${LOCAL_CONFIG_DIR}/env/private.sh
case ${ARCH} in
    'Linux'|'linux'|'LINUX')
        source ${LOCAL_CONFIG_DIR}/env/linux.sh
        ;;
    'Darwin'|'darwin'|'DARWIN')
        source ${LOCAL_CONFIG_DIR}/env/mac.sh
        ;;
esac
source ${LOCAL_CONFIG_DIR}/env/android.sh
source ${LOCAL_CONFIG_DIR}/env/path.sh
# end
