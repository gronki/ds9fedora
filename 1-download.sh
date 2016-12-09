#!/bin/bash

set -ex

version=7.4.1
tarname="ds9.$version.tar.gz"
url="http://ds9.si.edu/archive/source/$tarname"

if [ ! -f $tarname ]
then
    wget $url
fi

rm -rf saods9
tar xzf $tarname

cat saods9.noversion.desktop \
    | perl -pe "s/#Version=/Version=$version/" > saods9.desktop
