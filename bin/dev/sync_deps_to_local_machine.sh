#!/usr/bin/env bash

rsync -zaP \
    --delete \
    dev_machine:~/workspace/pets/hello_world/apps/frontend/_build ../../