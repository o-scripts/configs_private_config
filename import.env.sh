#!/bin/bash
ARCH=`uname`
# unterscheidliche Einstellungen
m.import ${LOCAL_CONFIG_DIR}/env/global.sh
m.import ${LOCAL_CONFIG_DIR}/env/private.sh
case ${ARCH} in
    'Linux'|'linux'|'LINUX')
        m.import ${LOCAL_CONFIG_DIR}/env/linux.sh
        ;;
    'Darwin'|'darwin'|'DARWIN')
        m.import ${LOCAL_CONFIG_DIR}/env/mac.sh
        ;;
esac
m.import ${LOCAL_CONFIG_DIR}/env/android.sh
m.import ${LOCAL_CONFIG_DIR}/env/path.sh
# end
