#!/usr/bin/env bash

set -e
rm -rf ./build

javac -d build/third.party.lib `find third.party.lib -type f -name '*.java'`
javac -d build/kcs.lib -p build `find kcs.lib -type f -name '*.java'`
javac -d build/kcs.app -p build `find kcs.app -type f -name '*.java'`
#echo Running MyApp
#java -p build -m kcs.app/my.app.notice.that.pckg.name.is.different.MyApp
#java -cp build/kcs.app:build/kcs.my.lib:build/third.party.lib my.app.notice.that.pckg.name.is.different.MyApp


