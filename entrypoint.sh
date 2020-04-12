#!/bin/sh -l

target=$1

defaultInput=$GITHUB_WORKSPACE
input=VAR1="${2:-$defaultInput}"

defaultOutput=${GITHUB_WORKSPACE}.report
output=VAR1="${3:-$defaultOutput}"

sourceMode="${4:-true}"

additionalCommandLineArguments=$4

# Execute RHAMT Analysis
$WINDUP_HOME/bin/rhamt-cli --target $target \
--input $input \
--output $output \
--sourceMode $sourceMode \
"$additionalCommandLineArguments"

tar -czvf rhamt.tgz $output
report=rhamt.tgz
echo "::set-output name=report::$report"
