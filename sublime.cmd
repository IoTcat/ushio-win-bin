@echo off 
if "%2" == "undefined" goto begin 
mshta vbscript:createobject("wscript.shell").run("%~nx0 %1 undefined",0)(window.close) 
:begin
"C:\Program Files\Sublime Text 3\sublime_text.exe" %1
