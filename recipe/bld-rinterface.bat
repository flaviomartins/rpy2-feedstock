@echo on

cd rpy2-interface

echo [build] > setup.cfg
echo compiler = mingw32 >> setup.cfg
set RPY2_API_FORCE=True

%PYTHON% -m pip install . --no-deps -vv
if %ERRORLEVEL% neq 0 exit 1
