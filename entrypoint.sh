#!/bin/sh -l

echo "----------------------------"
echo "WINDUP_HOME=$WINDUP_HOME"
ls -l $WINDUP_HOME

echo "----------------------------"
echo "GITHUB_WORKSPACE=$GITHUB_WORKSPACE"
ls -l $GITHUB_WORKSPACE

echo "----------------------------"
whoami
echo "----------------------------"

echo "HOME=$HOME"
ls -ld $HOME

$WINDUP_HOME/bin/rhamt-cli --target $1 \
--input $GITHUB_WORKSPACE \
--output $HOME \
$2
