#!usr/bin/env sh

set -euo pipefail

check_su(){
  if command -v sudo >/dev/null 2>&1; then
    sudo cp -r unixfetch /usr/bin/
  elif command -v doas >/dev/null 2>&1; then
    doas cp -r unixfetch /usr/bin/
  else
    su -c "cp -r unixfetch /usr/bin/"
  fi
}

setup(){
  check_su
  echo "(+) Your setup was successfully done"
}

setup

