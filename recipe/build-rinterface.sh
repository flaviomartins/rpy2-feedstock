#!/bin/bash

set -euxo pipefail

cd rpy2-rinterface

if [[ "${build_platform}" != "${target_platform}" ]]; then
  echo "Cross-compiling"
  export LDFLAGS="-L${PREFIX}/lib/R/lib ${LDFLAGS}"
  export CPPFLAGS="-I${PREFIX}/lib/R/include ${CPPFLAGS}"
fi

${PYTHON} -m pip install . -vv
