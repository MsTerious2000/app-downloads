@echo off
setlocal enabledelayedexpansion

REM Set the path to Microsoft Edge executable
set "edgePath=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

REM Open Microsoft Edge with a blank page
start "" "%edgePath%" https://rewards.bing.com

REM Wait for Edge to open (adjust the delay based on your system)
timeout /t 1 /nobreak >nul

REM Loop 10 times
for /L %%i in (1,1,10) do (
    REM Perform a search (replace "SearchTerm" with your actual search term)
    set "searchTerm=%%i"
    start "" "%edgePath%" "https://www.bing.com/search?q=!%searchTerm!"
    
    REM Wait for the search to complete (adjust the delay based on your system)
    timeout /t 1 /nobreak >nul
)

REM
start "" "%edgePath%" https://media.tenor.com/RK_8zCji9ZcAAAAM/never-gonna-give-you-up.gif

endlocal
