#!/bin/sh -l
output=${GITHUB_WORKSPACE}.report

$WINDUP_HOME/bin/rhamt-cli --target $1 \
--input $GITHUB_WORKSPACE \
--output $output \
$2

tar -czvf rhamt-report.tgz $output

report=$GITHUB_WORKSPACE/rhamt-report.tgz
echo "::set-output name=report::$report"
