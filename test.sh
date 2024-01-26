#!/bin/sh

if ./argtest foo $@; then
  echo foo is in args
else
  echo foo is not in args
fi
