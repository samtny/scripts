#!/bin/bash
set -x
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s $DIR/golocal.sh ~/golocal.sh
ln -s $DIR/backsync.sh ~/backsync.sh
