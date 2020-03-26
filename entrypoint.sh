#!/bin/sh -l

outputFolder=$HOME/rhamt-report

$WINDUP_HOME/bin/rhamt-cli --target $1 \
--input $GITHUB_WORKSPACE \
--output $reportOutputFolder \
$2


tar -czvf report.tgz $outputFolder

report=$GITHUB_WORKSPACE/report.tgz
echo "::set-output name=report::$report"

mv report.tgz $report