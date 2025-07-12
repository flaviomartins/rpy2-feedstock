@echo on

%PYTHON% -m pip install --no-deps --ignore-installed . -vv
if %ERRORLEVEL% neq 0 exit 1
