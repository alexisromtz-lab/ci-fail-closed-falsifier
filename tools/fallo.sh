#!/usr/bin/env bash
set -euo pipefail
cat > /tmp/junit.xml <<'X'
<?xml version="1.0" encoding="UTF-8"?>
<testsuite name="s" tests="2" failures="1">
<testcase name="t1"/><testcase name="t2"><failure message="boom"/></testcase>
</testsuite>
X
