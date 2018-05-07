@echo off
for /f %%a in (ip.txt) do (
    set ip=%%a
    set ntp="172.25.240.254"
    call hpqlocfg -s %%ip%% -l log.txt -f SetNTP.xml -u iloadmin -p iloadmin -t ntp1=%%ntp%%
)