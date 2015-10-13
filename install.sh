#!/usr/bin/env bash

INSTALL_DIR="$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)"
. "$INSTALL_DIR/env"

for c in $COMMANDS; do
	c="${c#-}"
	c="${c#-}"
	c="${c//-/_}"
	for f in $COMMANDSD/*$c; do
		run_sub_command $f
	done
done
