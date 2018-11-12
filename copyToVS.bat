::: RUN THIS .BAT SCRIPT WITH ADMIN PRIVILEGES TO COPY THE SNIPPETS TO VS 2013/2015 DIRECTORY

@echo off

cd /d "C:\Program Files (x86)\Microsoft Visual Studio 12.0"
if %ERRORLEVEL% equ 0 (
	rmdir /s /q OmniCode
	xcopy /s %~dp0\OmniCode OmniCode\
)

cd /d "C:\Program Files (x86)\Microsoft Visual Studio 14.0"
if %ERRORLEVEL% equ 0 (
	rmdir /s /q OmniCode
	xcopy /s %~dp0\OmniCode OmniCode\
	xcopy /s /y %~dp0\VC# VC#\
)

cd /d "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise"
if %ERRORLEVEL% equ 0 (
	rmdir /s /q OmniCode
	xcopy /s %~dp0\OmniCode OmniCode\
	xcopy /s /y %~dp0\VC# VC#\
)

cd /d "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community"
if %ERRORLEVEL% equ 0 (
	rmdir /s /q OmniCode
	xcopy /s %~dp0\OmniCode OmniCode\
	xcopy /s /y %~dp0\VC# VC#\
)

pause