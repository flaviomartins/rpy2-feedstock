#!/bin/bash

set -euxo pipefail

if [[ "${build_platform}" != "${target_platform}" ]]; then
  export RPY2_CFFI_MODE="API"
fi

export CFLAGS="${CFLAGS} -std=c11"
export LDFLAGS="-L${PREFIX}/lib/R/lib ${LDFLAGS}"
export CPPFLAGS="-I${PREFIX}/lib/R/include ${CPPFLAGS}"

${PYTHON} -m pip install ./rpy2-robjects/ . -vv
