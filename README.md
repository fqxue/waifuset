# Waifuset - 文生图数据集管理工具

Waifuset 是一个专门用于构建和管理文生图数据集的工具，提供安全、高效、便捷的 Web 界面。

## 前置条件

### Python 安装要求
在开始之前，请确保您的系统已安装 Python：

- **推荐版本**：Python 3.8 - 3.11
- **最低版本**：Python 3.8
- **不推荐**：Python 3.12+（可能存在兼容性问题）

### 安装 Python

#### Windows 用户
1. 访问 [Python 官网](https://www.python.org/downloads/)
2. 下载 Python 3.11.x 版本
3. 安装时**务必勾选** "Add Python to PATH"
4. 验证安装：打开命令提示符，输入 `python --version`

#### Linux 用户
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install python3.11 python3.11-venv python3.11-pip

# CentOS/RHEL
sudo yum install python3.11 python3.11-venv python3.11-pip

# 验证安装
python3.11 --version
```

#### Mac 用户
```bash
# 使用 Homebrew
brew install python@3.11

# 验证安装
python3.11 --version
```

### 安装 uv（推荐）
uv 是更快的 Python 包管理器，建议安装：

```bash
# Windows
pip install uv

# Linux/Mac
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## 获取项目

### 方式一：下载 Windows 整合包（推荐小白用户）

**最简单的方式，无需安装任何额外软件：**

1. 访问 [GitHub Releases](https://github.com/wochenlong/waifuset/releases)
2. 下载 `waifuset-v0.01-windows.zip`
3. 解压后直接使用（详见下方"快速开始"部分）

### 方式二：从源码获取（适合开发者）

#### 安装 Git

**Windows 用户：**
1. 访问 [Git 官网](https://git-scm.com/download/win)
2. 下载 Git for Windows
3. 运行安装程序，全部选择默认选项
4. 验证安装：打开命令提示符，输入 `git --version`

**Linux 用户：**
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install git

# CentOS/RHEL
sudo yum install git

# 验证安装
git --version
```

**Mac 用户：**
```bash
# 使用 Homebrew
brew install git

# 验证安装
git --version
```

#### 获取项目源码

```bash
# 克隆项目到本地
git clone https://github.com/wochenlong/waifuset.git

# 进入项目目录
cd waifuset

# 切换到最新版本
git checkout main
```

## 快速开始

### 方式一：使用 Windows 整合包（推荐小白用户）

1. **下载整合包**
   - 访问 [GitHub Releases](https://github.com/wochenlong/waifuset/releases)
   - 下载 `waifuset-v0.01-windows.zip`

2. **解压文件**
   - 右键点击下载的 zip 文件
   - 选择"解压到当前文件夹"或"解压到 waifuset-v0.01-windows"

3. **配置数据集路径**
   - 进入解压后的文件夹
   - 右键点击 `run.bat` 文件，选择"编辑"
   - 找到 `set DATASET_PATH=path/to/your/dataset`
   - 将 `path/to/your/dataset` 改为您的实际数据集路径
   - 保存文件（Ctrl+S）

4. **启动应用**
   - 双击 `run.bat` 文件
   - 等待自动安装依赖（首次运行需要几分钟）
   - 看到"正在启动 Waifuset..."后访问 http://127.0.0.1:7860

**就这么简单！** 整合包会自动：
- 创建 uv 虚拟环境
- 安装所有依赖
- 启动 Web 界面

### 方式二：从源码启动

## 一键启动

### Windows 用户（推荐）
1. 右键点击 run.bat 文件，选择编辑
2. 找到 set DATASET_PATH=path/to/your/dataset
3. 将 path/to/your/dataset 改为您的实际路径
4. 保存文件（Ctrl+S）
5. 双击 run.bat 运行

**就这么简单！** 脚本会自动：
- 创建 uv 虚拟环境
- 安装所有依赖
- 启动 Web 界面

### Linux/Mac 用户

1. 打开终端（Terminal）
2. 进入项目目录：cd /path/to/waifuset
3. 给脚本执行权限：chmod +x run.sh
4. 运行启动脚本：./run.sh /path/to/your/dataset

**就这么简单！** 脚本会自动：
- 创建 uv 虚拟环境
- 安装所有依赖
- 启动 Web 界面

## 访问界面

启动后访问：http://127.0.0.1:7860

## 项目结构

- run.bat - Windows 一键启动脚本
- run.sh - Linux/Mac 启动脚本
- api.py - 主程序
- requirements.txt - 依赖列表
- waifuset/ - 核心代码
- 使用说明.txt - 详细使用说明

## 局限性

- 基于 Danbooru 标签系统
- 标注格式：英文逗号分隔的标签
- 仅用于标注编辑，不包含图像编辑功能

## 适用场景

1. **数据集标注构建和清洗**
2. **数据集浏览和管理**

---

*遵循 Linus 的简洁原则：消除复杂性，让用户专注于使用工具而不是配置环境。*
