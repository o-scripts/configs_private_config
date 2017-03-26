#!/bin/bash
# das ist ROOT Ordner
export BRANCH_GIT=~/develop/branch.git
export LOCAL_WORKS_DIR=${BRANCH_GIT}/works
export MSHELL=${LOCAL_WORKS_DIR}/configs/private/scriptfile
export LOCAL_CONFIG_DIR=${LOCAL_WORKS_DIR}/configs/private/config
# end

# unterscheidliche Einstellungen
echo works/configs/private/config - import.env.sh --ok
source ${LOCAL_CONFIG_DIR}/import.env.sh
# end

# self define command
echo works/configs/private/config - import.command.sh --ok
source ${LOCAL_CONFIG_DIR}/import.command.sh
# end

