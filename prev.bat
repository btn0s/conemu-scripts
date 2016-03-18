@echo off
setlocal

call :mainscript
goto :eof

:mainscript
  setlocal

  set metaURL=http://mmeta.com
  set clURL=http://mmcl.com
  set hexURL=http://hexolve-dev.com

  call :checkmmeta
  call :checkmmcl
  call :checkhex

  endlocal
  goto :eof

:checkmmeta
  echo ;%CD%; | find /C /I "meta" > nul
  if %ERRORLEVEL%==0 (
    start chrome %metaURL%
  )
  goto :eof

:checkmmcl
  echo ;%CD%; | find /C /I "clients" > nul
  if %ERRORLEVEL%==0 (
    start chrome %clURL%
  )
  goto :eof


:checkhex
  echo ;%CD%; | find /C /I "hexolve" > nul
  if %ERRORLEVEL%==0 (
    start chrome %hexURL%
  )
  goto :eof
