#!/bin/bash

set -euxo pipefail

cd rpy2-rinterface

if [[ "${build_platform}" != "${target_platform}" ]]; then
  export RPY2_CFFI_MODE="API"
fi

export LDFLAGS="-L${PREFIX}/lib/R/lib ${LDFLAGS}"
export CPPFLAGS="-I${PREFIX}/lib/R/include ${CPPFLAGS}"

${PYTHON} -m pip install . -vv
