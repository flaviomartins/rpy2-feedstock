#!/bin/bash

set -euxo pipefail

# Prevent running ldconfig when cross-compiling.
if [[ "${BUILD}" != "${HOST}" ]]; then
  echo "#!/usr/bin/env bash" > ldconfig
  chmod +x ldconfig
  export PATH=${PWD}:$PATH
fi

cd rpy2-rinterface

if [[ "${build_platform}" != "${target_platform}" ]]; then
  echo "Cross-compiling"
  export LDFLAGS="-L${PREFIX}/lib/R/lib ${LDFLAGS}"
  export CPPFLAGS="-I${PREFIX}/lib/R/include ${CPPFLAGS}"
fi

${PYTHON} -m pip install . -vv
