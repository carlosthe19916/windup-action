#!/bin/sh -l

target=$1
input="${2:-$GITHUB_WORKSPACE}"
output="${3:-$GITHUB_WORKSPACE.report}"
additionalCommandLineArguments=$4

# Execute Analysis
$WINDUP_HOME/bin/mta-cli --target $target \
--input "$input" \
--output "$output" \
"$additionalCommandLineArguments"

tar -czvf mta-report.tgz -C $output .
report=mta-report.tgz
echo "::set-output name=report::$report"
