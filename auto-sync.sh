#!/bin/bash

export NVM_DIR="/root/.nvm"
source "$NVM_DIR/nvm.sh"

cd /root/quartz

# 拉取最新代码
git pull origin main

# 重新构建
npx quartz build 
