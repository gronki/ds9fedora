#!/bin/bash

set -ex

prefix="/usr/local"
bindir="$prefix/bin"
datadir="$prefix/share"

install -dv $bindir/
install -pv saods9/bin/* $bindir/

install -dv $datadir/icons/
install -m 644 -pv saods9.png $datadir/icons/

install -dv $datadir/applications/
install -m 644 -pv saods9.desktop $datadir/applications/

