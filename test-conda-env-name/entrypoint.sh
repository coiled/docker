#!/bin/bash

echo "conda activate foo" >> ~/.bashrc
exec "$@"