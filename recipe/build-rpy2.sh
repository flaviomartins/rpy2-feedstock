#!/bin/bash

set -euxo pipefail

python -m pip install --no-deps --no-build-isolation . -vv
