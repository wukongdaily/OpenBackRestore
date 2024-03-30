# iStoreOS一键备份与恢复脚本
## 🤔 这是什么？

该项目可以轻松备份iStoreOS已安装的软件和配置,当系统恢复出厂设置或重置后，可以一键恢复原来的软件和配置。<br>
## 💡 特色功能

- 💻 支持`一键生成备份档案 包括已安装软件及其配置`
- 💻 支持`一键恢复备份档案 包括已安装软件及其配置`
- 💻 支持`已安装软件及其配置:包含应用商店和第三方安装的ipk/run`
- 🔑 支持`同时支持终端命令行方式和iStore应用商店手动安装方式`
- 软路由iStoreOS(x86_64|Arm64) ✅


## 🚀 快速上手

### 1. 生成备份`/tmp/upload/backup/backup.tar.gz`
```bash
wget -O backup.run https://raw.githubusercontent.com/wukongdaily/OpenBackRestore/master/backup/backup.run && sh backup.run
```
> 每次备份都是完整的,可以经常备份,比如每月备份一次

### 2. 恢复备份 

**使用前提** 将备份档案提前上传到 `/tmp/upload/` 目录

```bash
wget -O restore.run https://raw.githubusercontent.com/wukongdaily/OpenBackRestore/master/backup/restore.run && sh restore.run
```


## 🚀 手动方式

> 1、在release页面下载backup.run或restore.run<br>
> 2、打开iStore应用商店,点击手动安装,将run文件拖拽上去即可执行。
