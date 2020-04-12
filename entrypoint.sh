#!/bin/sh -l

target=$1

defaultInput=$GITHUB_WORKSPACE
input="${2:-$defaultInput}"

defaultOutput=${GITHUB_WORKSPACE}.report
output="${3:-$defaultOutput}"

additionalCommandLineArguments=$4

# Execute RHAMT Analysis
$WINDUP_HOME/bin/rhamt-cli --target $target \
--input "$input" \
--output "$output" \
"$additionalCommandLineArguments"

tar -czvf rhamt.tgz -C $output
report=rhamt.tgz
echo "::set-output name=report::$report"
