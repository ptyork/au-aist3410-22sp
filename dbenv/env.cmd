@echo off
if defined DB_ENV_PATH (
    if not "%~1"=="on" (
        set "PATH=%DB_ENV_PATH%"
        set DB_ENV_PATH=
        echo DBENV environment OFF
    ) else (
        echo DBENV envronment ON
    )
) else (
    if not "%~1"=="off" (
        set "DB_ENV_PATH=%PATH%"
        set "PATH=%~dp0python;%~dp0vscode\bin;%~dp0mariadb\bin;%PATH%"
        popd
        echo DBENV environment ON
    ) else (
        echo DBENV envronment OFF
    )
)
