@echo off
setlocal

git clone https://github.com/btn0s/working-flow-template %~1

cd %~1
atom .
