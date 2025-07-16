@echo on

echo [build] > setup.cfg
echo compiler = mingw32 >> setup.cfg
set RPY2_API_FORCE=True

%PYTHON% -m pip install ./rpy2-rinterface/ ./rpy2-robjects/ . -vv -C--global-option=--verbose
if %ERRORLEVEL% neq 0 exit 1
