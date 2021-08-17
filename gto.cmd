@echo off

if not exist %tmp%\mark_path echo %tmp%>%tmp%\mark_path
if not exist %tmp%\current_path echo %tmp%>%tmp%\current_path
if not exist %tmp%\current_path1 echo %tmp%>%tmp%\current_path1
if not exist %tmp%\current_path2 echo %tmp%>%tmp%\current_path2
if not exist %tmp%\current_path3 echo %tmp%>%tmp%\current_path3
if not exist %tmp%\current_path4 echo %tmp%>%tmp%\current_path4
if not exist %tmp%\current_path5 echo %tmp%>%tmp%\current_path5
if not exist %tmp%\current_path6 echo %tmp%>%tmp%\current_path6

:start
SET /P MARK_PATH=<%tmp%\mark_path
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

if %1==list (echo         f %MARK_PATH% & echo .       1 %LAST_PATH% & echo ..      2 %LAST1_PATH% & echo ...     3 %LAST2_PATH% & echo ....    4 %LAST3_PATH% & echo .....   5 %LAST4_PATH% & echo ......  6 %LAST5_PATH% & echo ....... 7 %LAST6_PATH%)
if %1==ls (echo         f %MARK_PATH% & echo .       1 %LAST_PATH% & echo ..      2 %LAST1_PATH% & echo ...     3 %LAST2_PATH% & echo ....    4 %LAST3_PATH% & echo .....   5 %LAST4_PATH% & echo ......  6 %LAST5_PATH% & echo ....... 7 %LAST6_PATH%)

if %1==s (echo %cd%>%tmp%\mark_path)
if %1==f (cd /D %MARK_PATH%)



if %1==. (cd /D %LAST_PATH%)
if %1==1 (cd /D %LAST_PATH%)
if %1==.. (cd /D %LAST1_PATH%)
if %1==2 (cd /D %LAST1_PATH%)
if %1==... (cd /D %LAST2_PATH%)
if %1==3 (cd /D %LAST2_PATH%)
if %1==.... (cd /D %LAST3_PATH%)
if %1==4 (cd /D %LAST3_PATH%)
if %1==..... (cd /D %LAST4_PATH%)
if %1==5 (cd /D %LAST4_PATH%)
if %1==...... (cd /D %LAST5_PATH%)
if %1==6 (cd /D %LAST5_PATH%)
if %1==....... (cd /D %LAST6_PATH%)
if %1==7 (cd /D %LAST6_PATH%)




if %1==git (cd /D c:\opt\git\)
if %1==g (cd /D c:\opt\git\)
if %1==opt (cd /D c:\opt\)
if %1==etc (cd /D c:\etc\)
if %1==var (cd /D c:\var\)
if %1==lib (cd /D C:\usr\lib\)


if %1==html (cd /D c:\var\html)
if %1==ftp (cd /D c:\var\ftp)
if %1==onedrive (cd /D %userprofile%\Onedrive)
if %1==desktop (cd /D %userprofile%\Desktop)
if %1==home (cd /D %userprofile%\Desktop)
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


if %1==local (cd /D C:\usr\local\)
if %1==cmder (cd /D C:\usr\local\)

:end

set num=0


