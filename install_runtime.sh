#!/bin/bash -ex

curl -o $HOME/tools/bin/rt_runner https://s3-us-west-2.amazonaws.com/runtime-dev-download/linux/rt_runner
chmod a+x $HOME/tools/bin/rt_runner

if [[ -f $HOME/tools/bin/runtime ]]; then
    # Already installed
    exit 0
fi

curl -o $HOME/tools/bin/runtime https://s3-us-west-2.amazonaws.com/runtime-dev-download/linux/runtime
chmod a+x $HOME/tools/bin/runtime
curl -o $HOME/tools/bin/runtime-ci https://s3-us-west-2.amazonaws.com/runtime-dev-download/linux/runtime-ci
chmod a+x $HOME/tools/bin/runtime-ci

go get mynewt.apache.org/newt/newt
