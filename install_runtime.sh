#!/bin/bash -ex

echo "Dumping the env..."
env

if [[ -f $HOME/tools/bin/runtime ]]; then
    # Already installed
    exit 0
fi

curl -o $HOME/tools/bin/runtime https://s3-us-west-2.amazonaws.com/runtime-dev-download/linux/runtime
chmod a+x $HOME/tools/bin/runtime
