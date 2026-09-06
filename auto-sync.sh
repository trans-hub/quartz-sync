#!/bin/bash
export NVM_DIR="/root/.nvm"
source "$NVM_DIR/nvm.sh"

cd /root/quartz || exit 1

git pull --ff-only origin main || exit 1

npx quartz build
