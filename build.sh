#!/bin/sh

SOURCE="src/argtest.pas"
OUT="out/"

if [ "$1" = "--debug" ]; then
  fpc $SOURCE -FE"$OUT" -g -dDEBUG
else
  fpc $SOURCE -FE"$OUT" -XX -Xs -O4
fi

mv out/argtest .
