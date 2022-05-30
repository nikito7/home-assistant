@echo off

set server=10.1.0.78
set user=mqtt2021
set pass=
set topic=windows/pc/cpu
set app="./mqtt/mosquitto_pub.exe -h %server% -u %user% -P %pass%"

rem ### code ###

set usage=-1

for /f "skip=1" %%p in ('wmic cpu get loadpercentage ^| findstr /r /v "^$"') do (
set usage=%%p
)

echo debug: %usage% %%

%app% -t %topic% -m %usage%

rem ### eof ###
