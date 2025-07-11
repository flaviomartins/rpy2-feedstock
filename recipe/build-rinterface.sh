#!/bin/bash

set -euxo pipefail

# https://github.com/conda-forge/rpy2-feedstock/issues/79#issuecomment-1000920911
if [[ "${target_platform}" == "osx-arm64" ]]; then
  export RPY2_CFFI_MODE="API"
fi

export CFLAGS="-I${PREFIX}/include ${CFLAGS}"
export LDFLAGS="${LDFLAGS} -Wl,-rpath,$PREFIX/lib/R/lib"
export LINKFLAGS=""

${PYTHON} -m pip install --no-deps --no-build-isolation . -vv
