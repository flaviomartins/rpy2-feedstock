@echo on

cd rpy2-robjects

%PYTHON% -m pip install . -vv
if %ERRORLEVEL% neq 0 exit 1
