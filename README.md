# 视频最后一帧获取器

## 1. 使用AI工具制作

- **名称**：Gemini AI 
- **地址**：[https://gemini.google.com](https://gemini.google.com/)

## 2. 网络环境配置（仅供学习）

> ⚠️ **注意**：
> 作者不推荐使用任何破坏国家网络安全的工具。若因学习需要，可参考以下方案。

### 🚀 网络工具：SKYLUMO 80+国家地区

_请复制此地址在浏览器中打开：_ `SKYLUMO.CC`

- **运营背景**：新加坡实体企业运营机场
- **功能支持**：完美支持 Gemini 全系产品，支持win、mac、iphone和安卓等设备
- **推荐套餐**：💰 **99元 / 99999 GB**
    - _特性：流量不限时，用完即止，送谷歌账号_

### ⚖️ 免责声明

- 本人未收取任何推广佣金，以上内容仅用于技术学习。
- 请勿将工具用于任何违法行为。
- 使用中遇到的任何问题，请自行联系对应官方客服。

---

一个简单的工具，用于从视频文件中提取最后一帧并保存为图片。**支持 Windows、macOS、Linux 三大平台**。

[![构建状态](../../actions/workflows/build.yml/badge.svg)](../../actions/workflows/build.yml)

## 📥 下载与运行

前往 [Releases](https://github.com/flywhalemax/video-last-frame-extractor/releases) 下载对应平台的可执行文件：

| 平台 | 文件名 | 运行方式 |
|------|--------|----------|
| **Windows** | `VideoLastFrameExtractor.exe` | 双击运行或拖拽视频文件到 exe 上 |
| **macOS** | `VideoLastFrameExtractor-macos` | 终端运行：`chmod +x 文件名 && ./文件名 video.mp4` |
| **Linux** | `VideoLastFrameExtractor-linux` | 终端运行：`chmod +x 文件名 && ./文件名 video.mp4` |

> **Windows 用户注意**：首次运行如出现 "Windows 已保护你的电脑" 提示，点击 **"更多信息"** → **"仍要运行"** 即可。

---

## 🚀 快速开始 (源码运行)

1. **直接将视频文件拖拽到 `run.bat` 文件上**（仅 Windows）
2. 首次运行时自动创建虚拟环境并安装依赖
3. 稍等片刻，即可在视频同目录下生成最后一帧图片

---

## 💻 开发者部署

### 环境要求
- Python 3.10+

### 安装与运行
```bash
# 安装依赖
pip install -r requirements.txt

# 运行
python extract_last_frame.py <视频文件路径> [输出图片路径]
```

---

## ✨ 功能特点

- 🖱️ **极简操作**：拖拽视频即可使用
- 🌍 **跨平台**：支持 Windows、macOS、Linux
- 📁 **中文路径**：完美支持中文文件名
- 🎬 **格式丰富**：MP4, AVI, MKV, MOV, WMV 等
- 🖼️ **输出格式**：PNG (默认), JPG, BMP

---

## 🛠️ 命令行用法

```bash
# 基本用法（自动生成输出文件名）
python extract_last_frame.py "video.mp4"

# 指定输出位置
python extract_last_frame.py "video.mp4" "output.png"
```

### 作为 Python 模块调用
```python
from extract_last_frame import extract_last_frame

final_path = extract_last_frame("demo.mp4")
print(f"最后一帧已保存至: {final_path}")
```

---

## 📄 许可证

本项目采用 [MIT License](LICENSE) 开源。
