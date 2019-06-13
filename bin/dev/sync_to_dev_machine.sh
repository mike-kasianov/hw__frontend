#!/usr/bin/env bash

rsync -zaP \
    --delete \
    --exclude .git \
    --exclude .DS_Store \
    --exclude deps \
    --exclude _build \
    --exclude assets/package.json \
    --exclude assets/node_modules \
    ../../ dev_machine:~/workspace/pets/hello_world/apps/frontend/