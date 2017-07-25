#!/bin/bash -ex

target=$1

if [[ $target == "newt_testall" ]]; then
    newt test all --exclude net/oic
else
    newt build $target
    newt create-image $target 100.0.$TRAVIS_BUILD_NUMBER
    runtime --host=https://dev.runtime.io build upload -s -g $RT_DEVICE_GROUP --path . --target $target
fi
