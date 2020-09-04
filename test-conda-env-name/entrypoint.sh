#!/bin/bash

# Activate the "foo" conda environment
. /opt/conda/etc/profile.d/conda.sh
conda activate foo

exec "$@"