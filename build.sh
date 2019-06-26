#!/bin/sh

OPWD=$PWD
cd art/tools/ahat/src/main
find . -name \*.java | xargs javac
jar cvfm $OPWD/ahat.jar $OPWD/manifest.txt `find . -name \*.class`
