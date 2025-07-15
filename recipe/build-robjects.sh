#!/bin/bash

set -euxo pipefail

cd rpy2-robjects

export CFLAGS="-I${PREFIX}/include ${CFLAGS}"

${PYTHON} -m pip install . -vv
