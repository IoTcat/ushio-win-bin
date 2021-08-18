@echo off

if "%1"=="on" (goto on)
if "%1"=="off" (goto off)

goto end

:on
setx http_proxy http://127.0.0.1:10809
setx https_proxy http://127.0.0.1:10809
goto end


:off
setx http_proxy "" 
setx https_proxy ""

:end
echo http_proxy=%http_proxy%
echo https_proxy=%https_proxy%
