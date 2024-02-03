@echo off

rem Prompt the user for the project name
set /p project_name=Enter the project name: 

rem Run npm create vite command to create the project with React template
echo Creating React project...
call npm create vite@latest "%project_name%" -- --template react

rem Change directory to the project directory
cd %project_name%

rem Install dependencies
echo Installing dependencies...
call npm install

rem Run the VBScript to automatically open the browser
start "" wscript.exe "%~dp0open_browser.vbs"

rem Run npm run dev and wait for it to finish
echo Running the server...
call npm run dev

rem Keep the command prompt window open
pause