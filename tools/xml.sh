#!/usr/bin/env bash
set -euo pipefail
cat > /tmp/junit.xml <<'X'
<?xml version="1.0"?><testsuite><testcase name="uno"/><testcase name="dos"/></testsuite>
X
