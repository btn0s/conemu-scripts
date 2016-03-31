@echo off
setlocal

if "%~1"=="react" (
  git clone https://github.com/btn0s/nuproj-react.git %~2
) else (
  foundation new
)

cd %~2
atom .
