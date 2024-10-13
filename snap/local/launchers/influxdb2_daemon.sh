#!/bin/bash

set -ex

# Change the working directory to allow access to a config.{json|toml|yaml|yml} file in $SNAP_DATA
cd $SNAP_DATA

$SNAP/usr/bin/influxd &
PID=$!
echo $PID > influxd.pid
