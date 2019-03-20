#!/bin/bash
# Creates a playground book from an iOS ARKit App

set -e
set -u

SRCROOT=playgroundbook.template
DSTROOT=../arkit2.playgroundbook

if [ ! -d $SRCROOT ]; then
    echo "expected to find $SRCROOT, are we in the right dir?"
    exit 1
fi


rm -rf $DSTROOT
cp -r $SRCROOT $DSTROOT
cp -r arkit2/art.scnassets $DSTROOT/Contents/PrivateResources

# Add each of your application source file here, except you don't
# need to copy AppDelegate.swift

cp -r arkit2/ViewController.swift  $DSTROOT/Contents/Sources/

# Reveal the playgroundbook in Finder.
open -R $DSTROOT