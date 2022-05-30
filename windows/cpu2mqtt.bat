@echo off

set usage=0

for /f "skip=1" %%p in ('wmic cpu get loadpercentage ^| findstr /r /v "^$"') do (
set usage=%%p
echo debug: %usage%
)

rem eof
