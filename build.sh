#!/bin/bash -e

echo "========== Start =========="
echo Target: $1
env
git status
git remote -v
echo "==========  End  =========="
