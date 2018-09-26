#!/bin/bash

DLVHEX=dlvhex2
PLUGIN=../plugin/rdfplugin.py

echo "test.hex"
$DLVHEX --python-plugin=$PLUGIN test.hex $*
echo "knows.hex"
$DLVHEX --python-plugin=$PLUGIN knows.hex --filter=knows $*
echo "explore.hex"
$DLVHEX --python-plugin=$PLUGIN explore.hex --filter=explore_upto $*

