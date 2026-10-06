#!/bin/bash

LOCKFILE="/var/run/quartz-build.lock"
PENDINGFILE="/var/run/quartz-build.pending"

exec 9>"$LOCKFILE"

if ! flock -n 9; then
    echo "Quartz build is already running. Marking another build as pending."
    touch "$PENDINGFILE"
    exit 0
fi

export NVM_DIR="/root/.nvm"
source "$NVM_DIR/nvm.sh"

cd /root/quartz || exit 1

while true; do
    # Clear the pending flag before starting this build.
    rm -f "$PENDINGFILE"

    echo "Starting Quartz build..."

    git pull --ff-only origin main || exit 1

    npx quartz build || exit 1

    # If another webhook arrived while we were building,
    # run the build once more.
    if [ -f "$PENDINGFILE" ]; then
        echo "Another webhook arrived during the build. Running again..."
        continue
    fi

    break
done

echo "Quartz build completed."
