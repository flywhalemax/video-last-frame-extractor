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


一个简单的工具，用于从视频文件中提取最后一帧并保存为图片。支持多种视频格式，支持中文路径，完美解决 OpenCV 对中文支持不佳的问题。

[![构建状态](../../actions/workflows/build.yml/badge.svg)](../../actions/workflows/build.yml)

## 📥 下载与运行 (推荐：.exe 绿色版)

1. 前往 [Releases](https://github.com/flywhalemax/video-last-frame-extractor/releases) 页面下载最新的 `VideoLastFrameExtractor.exe`。
2. **运行说明**：
   - 双击运行时，如果出现 **"Windows 已保护你的电脑"** 提示：
     - 点击 **“更多信息”**。
     - 点击 **“仍要运行”** 即可。
   - 这是因为程序未经过昂贵的开发者签名，属于正常现象。

---

## 🚀 快速开始 (源码运行版)

您可以直接使用源码提供的 `run.bat` 脚本，它会自动处理所有环境配置：

1. **直接将视频文件拖拽到 `run.bat` 文件上**。
2. 首次运行时，脚本会自动创建虚拟环境并安装所需的运行库（需联网且系统已安装 Python）。
3. 稍等片刻，即可在视频同目录下生成最后一帧图片。

---

## 💻 开发者部署 (源代码运行)

如果您希望在开发环境运行，请参考以下步骤：

### 1. 环境准备
- 安装 **Python 3.10+**。
- 克隆或下载本项目到本地。

### 2. 安装依赖
在项目根目录运行：
```bash
pip install -r requirements.txt
```

### 2. 运行方式
- **方式一：懒人模式（推荐）**
  直接把视频文件拖拽到目录下的 `run.bat` 上。它会自动完成环境检测、依赖安装和视频处理。
- **方式二：手动模式**
  1. 创建并激活虚拟环境。
  2. 安装依赖：`pip install -r requirements.txt`。
  3. 运行脚本：`python extract_last_frame.py <视频文件路径> [输出图片路径]`

---

## ✨ 功能特点

- **极简操作**：支持鼠标拖拽，即使不懂技术也能轻松使用。
- **完美兼容**：深度优化对**中文路径、中文文件名**的支持。
- **格式丰富**：
    - **视频库**：MP4, AVI, MKV, MOV, WMV 等。
    - **图片库**：PNG (默认推荐), JPG, BMP 等。
- **智能跳转**：自动计算视频总帧数，支持精确跳转至最后一帧。

---

## 🛠️ 进阶用法 (命令行)

```bash
# 基本用法（自动生成输出文件名：原视频名_last_frame.png）
python extract_last_frame.py "我的视频.mp4"

# 指定输出位置
python extract_last_frame.py "video.mp4" "D:/Pictures/cover.jpg"
```

### 作为模块在 Python 中调用
```python
from extract_last_frame import extract_last_frame

# 提取并获取保存路径
final_path = extract_last_frame("demo.mp4")
print(f"最后一帧已保存至: {final_path}")
```

---

## 📄 许可证

本项目采用 [MIT License](LICENSE) 开源。
