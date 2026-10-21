#!/bin/sh
cat > /tmp/junit.xml <<'X'
<?xml version="1.0" encoding="utf-8"?>
<testsuite name="pytest" tests="2" failures="1" errors="0">
  <testcase name="ok"/>
  <testcase name="malo"><failure message="x"/></testcase>
</testsuite>
X
