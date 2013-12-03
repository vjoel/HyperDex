#!/bin/sh
javac -cp "${HYPERDEX_SRCDIR}"/bindings/java "${HYPERDEX_SRCDIR}"/test/java/RegexSearch.java

python "${HYPERDEX_SRCDIR}"/test/runner.py --space="space kv key k" --daemons=1 -- \
    java -Djava.library.path="${HYPERDEX_SRCDIR}"/.libs -cp "${HYPERDEX_SRCDIR}"/bindings/java:"${HYPERDEX_SRCDIR}"/test/java RegexSearch {HOST} {PORT}