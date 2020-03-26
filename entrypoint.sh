#!/bin/sh -l

output_folder=$HOME/rhamt/$GITHUB_REPOSITORY

$WINDUP_HOME/bin/rhamt-cli --target $1 \
--input $GITHUB_WORKSPACE \
--output $output_folder \
$2