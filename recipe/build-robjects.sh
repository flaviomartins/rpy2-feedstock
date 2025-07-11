#!/bin/bash

set -euxo pipefail

export CFLAGS="-I${PREFIX}/include ${CFLAGS}"
export LDFLAGS="${LDFLAGS} -Wl,-rpath,$PREFIX/lib/R/lib"
export LINKFLAGS=""

${PYTHON} -m pip install --no-deps --no-build-isolation . -vv
