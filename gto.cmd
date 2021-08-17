@echo off

if not exist %tmp%\current_path echo %tmp%>%tmp%\current_path
if not exist %tmp%\current_path1 echo %tmp%>%tmp%\current_path1
if not exist %tmp%\current_path2 echo %tmp%>%tmp%\current_path2
if not exist %tmp%\current_path3 echo %tmp%>%tmp%\current_path3
if not exist %tmp%\current_path4 echo %tmp%>%tmp%\current_path4
if not exist %tmp%\current_path5 echo %tmp%>%tmp%\current_path5
if not exist %tmp%\current_path6 echo %tmp%>%tmp%\current_path6

:start
SET /P LAST_PATH=<%tmp%\current_path
SET /P LAST1_PATH=<%tmp%\current_path1
SET /P LAST2_PATH=<%tmp%\current_path2
SET /P LAST3_PATH=<%tmp%\current_path3
SET /P LAST4_PATH=<%tmp%\current_path4
SET /P LAST5_PATH=<%tmp%\current_path5
SET /P LAST6_PATH=<%tmp%\current_path6


if %cd% neq %LAST_PATH% (echo %cd%>%tmp%\current_path & echo %LAST_PATH%>%tmp%\current_path1 & echo %LAST1_PATH%>%tmp%\current_path2 & echo %LAST2_PATH%>%tmp%\current_path3 & echo %LAST3_PATH%>%tmp%\current_path4 & echo %LAST4_PATH%>%tmp%\current_path5 && echo %LAST5_PATH%>%tmp%\current_path6 & goto start)

for %%a in (%*) do set /a num+=1
if %num% neq 1 (goto end)

if %1==list (echo .       %LAST_PATH% & echo ..      %LAST1_PATH% & echo ...     %LAST2_PATH% & echo ....    %LAST3_PATH% & echo .....   %LAST4_PATH% & echo ......  %LAST5_PATH% & echo ....... %LAST6_PATH%)
if %1==ls (echo .       %LAST_PATH% & echo ..      %LAST1_PATH% & echo ...     %LAST2_PATH% & echo ....    %LAST3_PATH% & echo .....   %LAST4_PATH% & echo ......  %LAST5_PATH% & echo ....... %LAST6_PATH%)

if %1==. (cd /D %LAST_PATH%)
if %1==.. (cd /D %LAST1_PATH%)
if %1==... (cd /D %LAST2_PATH%)
if %1==.... (cd /D %LAST3_PATH%)
if %1==..... (cd /D %LAST4_PATH%)
if %1==...... (cd /D %LAST5_PATH%)
if %1==....... (cd /D %LAST6_PATH%)


if %1==git (cd /D c:\opt\git\)
if %1==g (cd /D c:\opt\git\)


if %1==html (cd /D c:\var\html)
if %1==ftp (cd /D c:\var\ftp)
if %1==desktop (cd /D %userprofile%\Desktop)
if %1==document (cd /D %userprofile%\Documents)
if %1==doc (cd /D %userprofile%\Documents)
if %1==.ssh (cd /D %userprofile%\.ssh)
if %1==~ (cd /D %userprofile%\)
if %1==download (cd /D %userprofile%\Downloads)
if %1==appdata (cd /D %userprofile%\AppData\Roaming)

if %1==bin (cd /D c:\bin)
if %1==b (cd /D c:\bin)
if %1==tmp (cd /D %tmp%)
if %1==temp (cd /D %tmp%)


if %1==cmder (cd /D C:\usr\local\)


:end

set num=0
