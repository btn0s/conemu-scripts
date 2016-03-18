@echo off
setlocal EnableDelayedExpansion

set hostURL=""
call :mainscript
goto :eof

:mainscript
  setlocal

  call :checkmmeta
  call :checkmmcl
  call :checkhex

  echo %hostURL%

  endlocal
  goto :eof

:checkmmeta
  echo ;%CD%; | find /C /I "meta"
  if %ERRORLEVEL%=="1" (
    set hostURL="mmeta"
  )
  goto :eof

:checkmmcl
  echo ;%CD%; | find /C /I "clients"
  if %ERRORLEVEL%=="1" (
    set hostURL="mmcl"
  )
  goto :eof

:checkhex
  echo ;%CD%; | find /C /I "bull"
  if %ERRORLEVEL%=="1" (
    set hostURL="hexolve-dev"
  )
  goto :eof
