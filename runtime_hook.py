# -*- coding: utf-8 -*-
"""
PyInstaller Runtime Hook
在 Python 启动时立即设置 UTF-8 模式
这个文件会在主脚本运行之前执行
"""

import sys
import os

# 设置 Python UTF-8 模式
os.environ['PYTHONUTF8'] = '1'
os.environ['PYTHONIOENCODING'] = 'utf-8'
os.environ['PYTHONLEGACYWINDOWSSTDIO'] = '0'

# Windows 特殊处理
if sys.platform == 'win32':
    # 设置控制台代码页为 UTF-8
    try:
        os.system('chcp 65001 > nul 2>&1')
    except Exception:
        pass
    
    # 重新配置 stdout 和 stderr
    if hasattr(sys.stdout, 'reconfigure'):
        try:
            sys.stdout.reconfigure(encoding='utf-8', errors='replace')
        except Exception:
            pass
    if hasattr(sys.stderr, 'reconfigure'):
        try:
            sys.stderr.reconfigure(encoding='utf-8', errors='replace')
        except Exception:
            pass
