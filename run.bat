@echo off
chcp 65001 >nul
setlocal

set "SCRIPT_DIR=%~dp0"
set "VENV_DIR=%SCRIPT_DIR%venv"
set "PYTHON_EXE=%VENV_DIR%\Scripts\python.exe"
set "PIP_EXE=%VENV_DIR%\Scripts\pip.exe"

echo [1/3] 正在检查环境...

REM 检查系统是否安装了 Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ 错误: 未检测到 Python，请先安装 Python 3.10 或更高版本。
    pause
    exit /b 1
)

REM 检查虚拟环境是否存在
if not exist "%VENV_DIR%" (
    echo [2/3] 正在创建虚拟环境...
    python -m venv "%VENV_DIR%"
)

REM 检查并安装依赖
echo [2/3] 正在同步依赖库...
"%PIP_EXE%" install -r "%SCRIPT_DIR%requirements.txt" >nul 2>&1

echo [3/3] 准备就绪！

REM 检查是否有参数
if "%~1"=="" (
    echo.
    echo 💡 使用方法: 直接把视频文件拖拽到此脚本上
    echo.
    pause
    exit /b 0
)

REM 运行 Python 脚本
echo 🚀 正在处理视频...
"%PYTHON_EXE%" "%SCRIPT_DIR%extract_last_frame.py" %*

if %errorlevel% neq 0 (
    echo.
    echo ❌ 处理过程中出现错误。
)

pause

