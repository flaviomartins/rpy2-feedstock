#!/bin/bash

set -euxo pipefail

${PYTHON} -m pip install --no-deps --ignore-installed . -vv
