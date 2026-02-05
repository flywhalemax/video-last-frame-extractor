# 视频最后一帧获取器

一个简单的工具，用于从视频文件中提取最后一帧并保存为图片。支持多种视频格式，支持中文路径，完美解决 OpenCV 对中文支持不佳的问题。

[![构建状态](../../actions/workflows/build.yml/badge.svg)](../../actions/workflows/build.yml)

---

## 🚀 快速开始 (小白/免安装版)

如果您不想安装 Python 或配置环境，直接下载打包好的可执行文件即可：

1. 前往 [Releases](../../releases) 页面。
2. 下载最新的 `视频最后一帧获取器.exe`。
3. **直接将视频文件拖拽到该 EXE 文件上**，即可在视频同目录下生成最后一帧图片。

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

### 3. 运行方式
- **方式一：拖拽使用**
  直接把视频文件拖拽到目录下的 `run.bat` 上。
- **方式二：命令行运行**
  ```bash
  python extract_last_frame.py <视频文件路径> [输出图片路径]
  ```

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
