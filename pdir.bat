@echo off
setlocal

set ParentDir=%~p1
set ParentDir=%ParentDir: =:%
set ParentDir=%ParentDir:\= %
call :getparentdir %ParentDir%
set ParentDir=%ParentDir::= %

echo ParentDir is %ParentDir%

set a = %CD%

if "a"=="1" (
  echo "OH YEAH"
) else (
  echo "nada"
)

goto :EOF

:getparentdir
if "%~1" EQU "" goto :EOF
Set ParentDir=%~1
shift
goto :getparentdir
