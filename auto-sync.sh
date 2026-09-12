#!/bin/bash

LOCKFILE="/var/run/quartz-build.lock"

exec 9>"$LOCKFILE"

if ! flock -n 9; then
    echo "Quartz build is already running."
    exit 0
fi

export NVM_DIR="/root/.nvm"
source "$NVM_DIR/nvm.sh"

cd /root/quartz || exit 1

git pull --ff-only origin main || exit 1

npx quartz build
