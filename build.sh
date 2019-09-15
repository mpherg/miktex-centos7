#!/bin/bash
set -e

docker build -t miktex-build miktex-build/
docker run --rm -v $(pwd):/work miktex-build cp /miktex-2.9.7140-1.x86_64.rpm /work/
cp -f miktex-2.9.7140-1.x86_64.rpm miktex-basic
cp -f miktex-2.9.7140-1.x86_64.rpm miktex-complete
if ! docker images | grep -q miktex-basic
then
  docker build -t miktex-basic miktex-basic/
fi

if ! docker images | grep -q miktex-complete
then
  docker build -t miktex-complete miktex-complete/
fi
