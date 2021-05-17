@echo off

setlocal EnableDelayedExpansion

set j=0
set pkgs=

:: the maximum length of the command line string is 8191 characters

for /f "tokens=*" %%A in (%~dp0texlive.package) do (
    set /a j=j+1
    rem echo !j!
    set pkgs=!pkgs! %%A
    if !j!==200 (
        rem echo !pkgs!
        rem call tlmgr install --dry-run !pkgs!
        call tlmgr install !pkgs!
        set j=0
        set pkgs=
    )
)

::tlmgr install --dry-run !pkgs!
tlmgr install !pkgs!
