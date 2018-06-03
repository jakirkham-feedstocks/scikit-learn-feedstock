#!/bin/bash

if [ `uname` == "Darwin" ]
then
    export LDFLAGS="-headerpad_max_install_names -undefined dynamic_lookup -bundle"
fi

"${PYTHON}" setup.py install --single-version-externally-managed --record record.txt
