#!/bin/bash

# Find this script's directory
SCRIPT_DIR="$(realpath "$(dirname "$0")")"

BASHRC_PATH="${HOME}/.bashrc"
BASH_PROFILE_PATH="${HOME}/.bash_profile"
BASH_ALIASES_PATH="${HOME}/.bash_aliases"

if [[ -f ${BASHRC_PATH} ]]; then
    mv ${BASHRC_PATH} "${HOME}/.backup_bashrc"
    echo "Moved ${BASHRC_PATH} to backup file"
fi

if [[ -f ${BASH_PROFILE_PATH} ]]; then
    mv ${BASH_PROFILE_PATH} "${HOME}/.backup_bash_profile"
    echo "Moved ${BASH_PROFILE_PATH} to backup file"
fi

if [[ -f ${BASH_ALIASES_PATH} ]]; then
    mv ${BASH_ALIASES_PATH} "${HOME}/.backup_bash_aliases"
    echo "Moved ${BASH_ALIASES_PATH} to backup file"
fi

ln -s "${SCRIPT_DIR}/dots/.bashrc" ${BASHRC_PATH}
ln -s "${SCRIPT_DIR}/dots/.bash_profile" ${BASH_PROFILE_PATH}
ln -s "${SCRIPT_DIR}/dots/.bash_aliases" ${BASH_ALIASES_PATH}
