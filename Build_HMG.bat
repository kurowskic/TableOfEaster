SET PATH=%~d0\hmg.3.4.4\harbour\bin;%~d0\hmg.3.4.4\mingw\bin;%PATH%

title toe_hmg

call del.bat

copy toe_ver3._ch toe_ver.ch
copy toe_hmg3._rc toe_hmg.rc

call %~d0\hmg.3.4.4\build.bat /n toe_hmg.hbp toe_hmg.hbc

IF NOT EXIST toe_hmg.exe goto :END
IF NOT EXIST %~d0\upx-win32\upx.exe goto :END

IF EXIST %~d0\px-win32\upx.exe %~d0\upx-win32\upx.exe -9 -q toe_hmg.exe -o toe.exe

IF EXIST toe.exe DEL toe_hmg.exe

:END

title OK
