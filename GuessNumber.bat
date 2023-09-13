@echo off

:: Decomposition of the current date
set /a J=100%DATE:~0,2% %% 100
set /a M=100%DATE:~3,2% %% 100
set /a A=%DATE:~6,4%

:: Calculation of the Julian day
set /a N=(1461 * (%A% + 4800 + (%M% - 14) / 12)) / 4 + (367 * (%M% - 2 - 12 * ((%M% - 14) / 12))) / 12 - (3 * ((%A% + 4900 + (%M% - 14) / 12) / 100)) / 4 + %J% - 32075

:: Calculation of the day number [Monday = 0 ... Sunday = 6]
set /a N%%=7

:: Assignment of Days
if %N%==0 set DAY=MONDAY
if %N%==1 set DAY=TUESDAY
if %N%==2 set DAY=WEDNESDAY
if %N%==3 set DAY=THURSDAY
if %N%==4 set DAY=FRIDAY
if %N%==5 set DAY=SATURDAY
if %N%==6 set DAY=SUNDAY

:: Assignment of Months
if %M%==1  set MONTH=JANUARY
if %M%==2  set MONTH=FEBRUARY
if %M%==3  set MONTH=MARCH
if %M%==4  set MONTH=APRIL
if %M%==5  set MONTH=MAY
if %M%==6  set MONTH=JUNE
if %M%==7  set MONTH=JULY
if %M%==8  set MONTH=AUGUST
if %M%==9  set MONTH=SEPTEMBER
if %M%==10 set MONTH=OCTOBER
if %M%==11 set MONTH=NOVEMBER
if %M%==12 set MONTH=DECEMBER

:: Result

echo Hello! Today is %DAY%, %MONTH% %J%, %A%.
echo I'm going to perform a magic trick. During this trick, there will be multiple steps to go through.
echo Press Enter or Spacebar, the window automatically close at the end.

pause > nul
set /p prenom= Your first name or nickname:

echo Nice to meet you, %prenom%! I'm going to read your mind. Think of a number between 1 and 31, and I'll guess it.
echo Please make sure your number is within the provided list.
echo Ready?
pause > nul
echo Let's begin.
goto start

:start1
echo You must have made a mistake in your answer.
:step1
echo Is your number among these numbers? 1-27-7-5-3-19-25-11-21-9-17-13-15-23-29-31
set /p yesorno01=Yes or No?
if /i "%yesorno01%"=="No" (set /a result2=0)
if /i "%yesorno01%"=="Yes" (set /a result2=1)
else (goto :start1)
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
color f1

goto step2
:stepA
echo You must have made a mistake in your answer.
:step2
echo Is your number among these numbers? 2-6-3-15-31-7-18-27-10-19-22-14-11-23-30-26
set /p yesorno02=Yes or No?
if /i "%yesorno02%"=="No" (set /a result02=0)
if /i "%yesorno02%"=="Yes" (set /a result02=2)
else (goto stepA)


cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
color f2
goto step3
:stepB
echo You must have made a mistake in your answer.
:step3
echo Is your number among these numbers? 4-22-31-13-15-7-29-6-5-20-30-12-14-21-23-28
set /p yesorno03=Yes or No?
if /i "%yesorno03%"=="No" (set /a result002=0)
if /i "%yesorno03%"=="Yes" (set /a result002=4)
else (goto :stepB)

cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
color f3
goto step4
:stepC
echo You must have made a mistake in your answer.
:step4
echo Is your number among these numbers? 8-24-10-14-29-27-13-26-28-30-15-12-11-9-25-31
set /p yesorno04=Yes or No?
if /i "%yesorno04%"=="No" (set /a result0002=0)
if /i "%yesorno04%"=="Yes" (set /a result0002=8)
else (goto :stepC)
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
color f4
goto step5
:stepD
echo You must have made a mistake in your answer, %prenom%.
:step5
echo Is your number among these numbers? 31-29-24-19-16-18-26-30-17-20-28-21-22-27-25-23
set /p yesorno05=Yes or No?
if /i "%yesorno05%"=="No" (set /a result00002=0)
if /i "%yesorno05%"=="Yes" (set /a result00002=16)
else (goto :stepD)

cls
echo.
echo.
echo.
echo.
echo.
color fc
set /a resultTOTAL= %result2%+%result02%+%result002%+%result0002%+%result00002%

echo YOU THOUGHT OF THE NUMBER: %resultTOTAL%
pause > nul
color 0c

echo If you liked this concept,
echo don't hesitate to reuse it, it even works in real life!
pause > nul
color 09
cls

color 0c
echo.

echo Do you want to do this magic trick again, %prenom%?
set /p repeter=Yes or No?
if %repeter%=="Yes" goto start
if %repeter%=="No" goto finish

:finish
echo Goodbye
timeout 50


:start
goto step1






























