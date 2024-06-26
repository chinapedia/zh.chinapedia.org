# 迅雷影音卸载教程

本教程旨在帮助用户彻底卸载迅雷影音，同时确保系统的稳定性。请按照以下步骤操作。

## 前言

在开始操作之前，建议完整阅读本教程。由于需要下载 BitTorrent（种子），我们安装了迅雷。然而，迅雷自带捆绑软件迅雷影音。卸载迅雷后，发现无法通过控制面板删除迅雷影音，且在安装目录中找不到卸载程序，同时该软件频繁自动修改默认播放器。

## 解决方法

### 1. 定位安装目录

1.1. 随便点击一个视频文件播放（迅雷影音自动变为默认播放器），右键任务栏，点击任务管理器。

1.2. 找到迅雷影音，右键点击展开，再次右键点击“打开文件所在的位置”，找到安装目录。

### 2. 启用内置管理员账户

2.1. 右键点击左下角的开始菜单（形状是四个方块），选择“Windows PowerShell（管理员）”。

2.2. 输入以下命令，启用内置管理员账户：

```shell
net user administrator /active:yes
```

最好是复制粘贴上面这行代码，避免输入错误。

2.3. 同时按住键盘上的 Win 键（形状是四个方块）和 R 键，在运行框中输入 `gpedit.msc`。

2.4. 在左侧列表中依次定位至“计算机配置 – Windows 设置 – 安全设置 – 本地策略 – 安全选项”。

2.5. 在右边找到“用户账户控制：用于内置管理员账户的管理员批准模式”，双击并将其禁用。

2.6. 重启电脑，切换到管理员账户。

### 3. 删除相关文件

3.1. 在“此电脑”中搜索“迅雷”，逐一查询文件所在位置并删除。

3.2. 在“此电脑”中搜索“thunder”，逐一查询文件所在位置并删除。注意区分其他软件的文件，确保删除的是迅雷相关文件。Thunder Network 一定是迅雷的文件夹，直接删除。

3.3. 在“此电脑”中搜索“xmp”，逐一查询文件所在位置并删除。注意区分其他软件的文件，根据下载时间判断文件是否为迅雷相关文件。

3.4. 找到迅雷的安装路径，右键将该文件夹删除。如果无法删除，右键选择 360 的强制删除功能。

3.5. 删除临时文件：导航至 `C:\Users\你的用户名\AppData\Local\Temp`，删除该文件夹内的所有文件，但不要删除 Temp 文件夹本身。

### 4. 可选：恢复系统设置

4.1. 重启电脑，切换回原来的用户账户。

4.2. 右键点击左下角的开始菜单，选择“Windows PowerShell（管理员）”，输入以下命令禁用内置管理员账户：

```shell
net user administrator /active:no
```

4.3. 同时按住键盘上的 Win 键和 R 键，在运行框中输入 `gpedit.msc`。

4.4. 定位至“计算机配置 – Windows 设置 – 安全设置 – 本地策略 – 安全选项”。

4.5. 找到“用户账户控制：用于内置管理员账户的管理员批准模式”，双击并将其启用。

4.6. 重启电脑，切换到原来的用户账户。

### 5. 清理注册表

5.1. 按 Win+R，输入 `regedit` 打开注册表编辑器。

5.2. 定位至 `计算机\HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node`，删除含有迅雷字样或 thunder 字样的项。注意，只删除明确是迅雷相关的项。

5.3. 定位至 `计算机\HKEY_USERS`，打开每一项查找并删除含有迅雷字样或 thunder 字样的项。注意，只删除明确是迅雷相关的项。

5.4. 定位至 `计算机\HKEY_CLASSES_ROOT\Directory\shell`，删除其中两个大写的 XMP 项，例如 XMPFolder2Add。

5.5. 不熟悉注册表的用户，请按部就班操作，不要删除未明确说明的项。

## 注意事项

1. 按照步骤顺序进行操作。
2. 确保只删除明确是迅雷影音相关的文件和注册表项。
3. 避免删除不确定的文件，以免系统崩溃。

通过以上步骤，您应该能够成功卸载迅雷影音并清理相关残留文件。
