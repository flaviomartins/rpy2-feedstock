#!/bin/bash

set -euxo pipefail

cd rpy2-rinterface

if [[ "${build_platform}" != "${target_platform}" ]]; then
  export RPY2_CFFI_MODE="API"
fi

export LDFLAGS="-L${PREFIX}/lib/R/lib ${LDFLAGS}"
export CPPFLAGS="-I${PREFIX}/lib/R/include ${CPPFLAGS}"

mkdir -p $SP_DIR/rpy2
echo "__path__ = __import__('pkgutil').extend_path(__path__, __name__)" > $SP_DIR/rpy2/__init__.py

${PYTHON} -m pip install . -vv
