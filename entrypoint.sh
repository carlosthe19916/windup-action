#!/bin/sh -l

echo "----------------------------"
echo "WINDUP_HOME=$WINDUP_HOME"
ls -l $WINDUP_HOME

echo "----------------------------"
echo "GITHUB_WORKSPACE=$GITHUB_WORKSPACE"
ls -l $GITHUB_WORKSPACE

mkdir $HOME/rhamt
echo "----------------------------"
echo "HOME=$HOME"
ls -l $HOME

$WINDUP_HOME/bin/rhamt-cli --target $1 \
--input $GITHUB_WORKSPACE \
--output $HOME/rhamt \
$2
