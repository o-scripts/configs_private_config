#!/bin/bash
# das ist ROOT Ordner
export BRANCH_GIT=~/develop/branch.git
export LOCAL_WORKS_DIR=${HOME}/works
export MSHELL=${LOCAL_WORKS_DIR}/configs/private/scriptfile
export LOCAL_CONFIG_DIR=${LOCAL_WORKS_DIR}/configs/private/config
# end
# unterscheidliche Einstellungen
source ${LOCAL_CONFIG_DIR}/env/log.sh

m.log.v works/configs/private/config - import.env.sh --ok
m.import ${LOCAL_CONFIG_DIR}/import.env.sh
# end

# self define command
m.log.v works/configs/private/config - import.command.sh --ok
m.import ${LOCAL_CONFIG_DIR}/import.command.sh
# end
