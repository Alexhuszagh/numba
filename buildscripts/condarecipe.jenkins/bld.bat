@rem Hack to workaround https://github.com/testing-cabal/funcsigs/issues/18
%PYTHON% -m pip install ordereddict
%PYTHON% setup.py build install
if errorlevel 1 exit 1

if "%PY3K%"=="1" (
    rd /s /q %SP_DIR%\numpy
)
