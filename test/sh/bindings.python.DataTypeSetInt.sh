#!/bin/sh

python "${HYPERDEX_SRCDIR}"/test/runner.py --space="space kv key k attributes set(int) v" --daemons=1 -- \
    python "${HYPERDEX_SRCDIR}"/test/python/DataTypeSetInt.py {HOST} {PORT}
