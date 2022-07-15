if "%MG_ROOT%"=="" set MG_ROOT=%~d0\minigui

title toe_hmg

call del.bat

copy toe_ver2._ch toe_ver.ch
copy toe_hmg2._rc toe_hmg.rc


call %MG_ROOT%\batch\compile.bat toe_hmg /ro


call %MG_ROOT%\batch\compile.bat toe_hmg                 /nl %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat EasterSunday            /nl %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat MakeNavigation          /nl %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat MakeTableOfEasterSunday /nl %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat ctklib                  /nl %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat About                   /nl %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat EndTheProgram           /nl %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat Show_TitleBar           /nl %1 %2 %3 %4 %5 %6 %7 %8 %9

call %MG_ROOT%\batch\compile.bat toe_hmg /lo /b EasterSunday /b MakeNavigation /b MakeTableOfEasterSunday /b ctklib /b About /b EndTheProgram /b Show_TitleBar /r toe_hmg /nx %1 %2 %3 %4 %5 %6 %7 %8 %9

call %MG_ROOT%\batch\compile.bat toe_hmg                 /do %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat EasterSunday            /do %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat MakeNavigation          /do %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat MakeTableOfEasterSunday /do %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat ctklib                  /do %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat About                   /do %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat EndTheProgram           /do %1 %2 %3 %4 %5 %6 %7 %8 %9
call %MG_ROOT%\batch\compile.bat Show_TitleBar           /do %1 %2 %3 %4 %5 %6 %7 %8 %9

IF NOT EXIST toe_hmg.exe goto :END
IF NOT EXIST %~d0\upx-win32\upx.exe goto :END

IF EXIST %~d0\upx-win32\upx.exe %~d0\upx-win32\upx.exe -9 -q toe_hmg.exe -o toe.exe

IF EXIST toe.exe DEL toe_hmg.exe

:END

title OK
