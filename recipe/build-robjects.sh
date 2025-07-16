#!/bin/bash

set -euxo pipefail

if [[ "${target_platform}" == "osx-64" || "${target_platform}" == "linux-aarch64" ]]; then
  export RPY2_CFFI_MODE="API"
fi

cd rpy2-robjects

if [[ "${build_platform}" != "${target_platform}" ]]; then
  echo "Cross-compiling"
  export LDFLAGS="-L${PREFIX}/lib/R/lib ${LDFLAGS}"
  export CPPFLAGS="-I${PREFIX}/lib/R/include ${CPPFLAGS}"
fi

${PYTHON} -m pip install . -vv
