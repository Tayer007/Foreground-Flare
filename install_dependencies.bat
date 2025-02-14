@echo off
echo Installing Python dependencies...

REM Check if Python is installed
where python
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python 3 and add it to your PATH.
    pause
    exit /b 1
)

REM Upgrade pip
python -m pip install --upgrade pip

REM Install required packages
pip install pycryptodome

echo.
echo All dependencies installed successfully!
echo.
echo Please ensure all files (FFInstaller.exe, FF_encrypted.exe, loader.exe, installer.nsi and this bat file) are in the same directory.
echo.
echo Run the FFInstaller.exe to install the application.
pause
