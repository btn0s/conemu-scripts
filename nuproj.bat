@echo off
setlocal

if "%~1"=="-old" (
  foundation new
) else (
  git clone https://github.com/btn0s/bn-web-starter-kit.git %~1

  cd "%~1"
  atom . && cd "%~1" && npm install && bower install
)
