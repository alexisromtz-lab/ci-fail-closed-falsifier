#!/usr/bin/env bash
set -euo pipefail
cat > /tmp/junit.xml <<'X'
<?xml version="1.0" encoding="UTF-8"?>
<testsuites tests="1"><testsuite name="a" tests="1"><testcase name="x"/></testsuite>
<testsuite name="b" tests="2"><testcase name="y"/><testcase name="z"/></testsuite></testsuites>
X
