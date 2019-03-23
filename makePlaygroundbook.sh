#!/bin/bash
# Creates a playground book from an iOS ARKit App.

set -e
set -u

APPNAME=arkit2
SRCROOT=playgroundbook.template
DSTROOT=../$APPNAME.playgroundbook

if [ ! -d $SRCROOT ]; then
    echo "expected to find directory $SRCROOT, are we in the right dir?"
    exit 1
fi

if [ ! -d $APPNAME ]; then
    echo "expected to find directory $APPNAME, are we in the right dir?"
    exit 1
fi

rm -rf $DSTROOT
cp -r $SRCROOT $DSTROOT
cp -r $APPNAME/art.scnassets $DSTROOT/Contents/PrivateResources

# Convert DAE files so they will work with SceneKit

SRCASSETS=$APPNAME/art.scnassets
DSTASSETS=$DSTROOT/Contents/PrivateResources/art.scnassets

pushd $SRCASSETS >/dev/null
DAEFILES=`ls *.dae`
popd >/dev/null

for f in $DAEFILES
do
	xcrun scntool --convert $SRCASSETS/$f --format c3d --output $DSTASSETS/$f
done

# Add each of your application source file here, except you don't
# need to copy AppDelegate.swift

cp -r $APPNAME/ViewController.swift  $DSTROOT/Contents/Sources/

# Reveal the playgroundbook in Finder.
open -R $DSTROOT