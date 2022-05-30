@echo off

set server=
set user=
set pass=
set topic=

rem ### code ###

set usage=-1

for /f "skip=1" %%p in ('wmic cpu get loadpercentage ^| findstr /r /v "^$"') do (
set usage=%%p
)

echo debug: %usage% %%

rem ### eof ###
