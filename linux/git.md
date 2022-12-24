## git 基础命令
#### 配置git的默认编辑器
```shell
git config --global core.editor vim
```
#### 安装glf
```shell
git lfs install
```
#### 添加大文件后缀
```shell
git lfs track '*.bin'
git lfs track '*.data'
git lfs track '*.jpg'
git lfs track '*.png'
git lfs track '*.jar'

git add .gitattributes
```