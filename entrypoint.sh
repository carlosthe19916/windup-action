#!/bin/sh -l
output=${GITHUB_WORKSPACE}.report

$WINDUP_HOME/bin/rhamt-cli --target $1 \
--input $GITHUB_WORKSPACE \
--output $output \
$2

tar -czvf report.tgz $output
ls -l

report=$GITHUB_WORKSPACE/report.tgz
echo "::set-output name=report::$report"

mv report.tgz $report