#!/bin/bash

set -euxo pipefail

cd rpy2-rinterface

export CFLAGS="-I${PREFIX}/include ${CFLAGS}"
export LDFLAGS="${LDFLAGS} -Wl,-rpath,$PREFIX/lib/R/lib"

${PYTHON} -m pip install --no-deps --no-build-isolation . -vv
