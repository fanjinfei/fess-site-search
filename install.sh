#!/bin/bash -eux

FESS_VERS=("11.3" "11.4")

SCRIPT_DIR=$(cd $(dirname $0); pwd)

for ver in ${FESS_VERS[@]}; do
  echo "####################"
  echo "#Install: FSS ${ver} #"
  echo "####################"
  cd ${SCRIPT_DIR}/fss/${ver}/
  npm install
done

echo "Done: install"
