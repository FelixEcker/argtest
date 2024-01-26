# argtest
Tests if an argument is supplied

## Usage
`argtest [argument] [search arguments]`

If argtest finds `argument` within `search arguments` it will halt with an exit code of 0. If either to few arguments are supplied (<2) or argtest doesn't find
`argument`, it will halt with an exit code of 1.

Example (see test.sh):
```sh
#!/bin/sh

if ./argtest foo $@; then
  echo foo is in args
else
  echo foo is not in args
fi
```

Output:
```sh
$ sh test.sh bar
foo is not in args

$ sh test.sh bar foo
foo is in args
```
