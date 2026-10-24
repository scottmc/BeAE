#!/bin/sh
# Usage: ./Build        build
#        ./Build clean  remove build output
#        ./Build run    build, then start BeAE
cd "$(dirname "$0")/Core-src" || exit 1
case "$1" in
	clean)	make clean ;;
	run)	make && ../BeAE/BeAE ;;
	*)	make ;;
esac
