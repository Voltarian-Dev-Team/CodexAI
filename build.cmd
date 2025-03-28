@echo off

:: Enable delayed variable expansion
setlocal enabledelayedexpansion


set OUTPUT_DIR=%cd%
:: Warp to sdldoom-1.10 dir
cd sdldoom-1.10

:: Define source directory
set SOURCE_DIR=.

:: Define output directory

:: Create output directory if it doesn't exist
if not exist %OUTPUT_DIR% mkdir %OUTPUT_DIR%

:: Find all .c files in the source directory
set SRC_FILES=
for %%f in (%SOURCE_DIR%\*.c) do (
    set SRC_FILES=!SRC_FILES! %%f
)

:: Set the output HTML file
set OUTPUT_HTML=%OUTPUT_DIR%\build\index.html

:: Compile with emcc
emcc %SRC_FILES% -o %OUTPUT_HTML% --preload-file %SOURCE_DIR% --preload-file doom2.wad -s ALLOW_MEMORY_GROWTH=1 --shell-file %OUTPUT_DIR%\shell.html -s USE_SDL=1 2>..\error.log
pause