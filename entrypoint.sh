#!/bin/sh -l

output_folder=$HOME/rhamt/$GITHUB_REPOSITORY
echo "::set-output name=output_folder::$output_folder"

$WINDUP_HOME/bin/rhamt-cli --target $1 \
--input $GITHUB_WORKSPACE \
--output $output_folder \
$2

tar -czvf report.tgz $output_folder
# mv report.tgz

expr 3 + 7 > $GITHUB_WORKSPACE/acaaaaaaaa.txt