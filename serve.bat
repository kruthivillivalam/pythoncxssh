set ret_path=%cd%
set script_path=%~dp0
cd "%script_path%"

set FLASK_APP=app.py
IF "%1"=="dev" (
    set FLASK_ENV=development
    set FLASK_CONFIGURATION=%1
) ELSE (
    set FLASK_ENV=
    set FLASK_CONFIGURATION=
)
IF "%2"=="ext" (
    start flask run --host=0.0.0.0
) ELSE (
    start flask run
)

cd "%ret_path%"
set ret_path=
set script_path=