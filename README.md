# iStoreOS一键备份与恢复脚本
## 🤔 这是什么？

该项目可以轻松备份iStoreOS已安装的软件和配置,当系统恢复出厂设置或重置后，可以一键恢复原来的软件和配置。<br>
### 特别说明：对于iStoreOS系统而言，docker的数据分区基本上被用户主动迁移到另一个分区，因此无需备份，因为重置系统并不会删除用户自己新建的分区。若用户没有迁移docker的数据分区，那么我们的备份已经包含！                                                       
## 💡 特色功能

- 💻 支持`一键生成备份档案 包括已安装软件及其配置`
- 💻 支持`一键恢复备份档案 包括已安装软件及其配置`
- 💻 支持`已安装软件及其配置:包含应用商店和第三方安装的ipk/run`
- 🔑 支持`同时支持终端命令行方式和iStore应用商店手动安装方式`
- 软路由iStoreOS(x86_64|Arm64) ✅
- 兼容机型：MT3000/2500/6000 ✅

## 🚀 方法一 命令行方式

### 1. 生成备份`/tmp/upload/backup.tar.gz`
```bash
wget -O backup.run https://raw.githubusercontent.com/wukongdaily/OpenBackRestore/master/backup/backup.run && sh backup.run
```
> 备份仓库
```bash 
wget -O backup.run https://gitee.com/wukongdaily/OpenBackRestore/raw/master/backup/backup.run && sh backup.run
```
> 每次备份都是完整的,可以经常备份,比如每月备份一次

### 2. 恢复备份 

**使用前提** 将备份档案提前上传到 `/tmp/upload/` 目录,如图<br><br>![huifu](https://github.com/wukongdaily/OpenBackRestore/assets/143675923/cd111f10-e6aa-4011-a046-b3004f77c7eb)

> 确定备份文件已经上传了 再执行如下命令即可恢复,恢复完成后会自动重启
### ❤️恢复命令如下

```bash
wget -O restore.run https://raw.githubusercontent.com/wukongdaily/OpenBackRestore/master/backup/restore.run && sh restore.run
```
> 备份仓库
```bash 
wget -O restore.run https://gitee.com/wukongdaily/OpenBackRestore/raw/master/backup/restore.run && sh restore.run
```


## 🚀 方法二 手动方式

> 1、在release页面下载backup.run或restore.run<br>
https://github.com/wukongdaily/OpenBackRestore/releases/latest <br>
> 2、打开iStore应用商店,点击手动安装,将run文件拖拽上去即可执行。<br>
![image](https://github.com/wukongdaily/OpenBackRestore/assets/143675923/54fdc034-ed4f-4f81-8aa7-0de556e0c3e2)

