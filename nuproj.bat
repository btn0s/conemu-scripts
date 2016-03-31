@echo off
setlocal

if "%~1"=="react" (
  git clone https://github.com/btn0s/nuproj-react.git %~2
) else (
  git clone https://github.com/zurb/foundation-zurb-template.git %~2
)

cd %~2
atom .
