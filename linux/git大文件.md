# 安装glf
```shell
git lfs install
```
# 添加大文件后缀
```shell
git lfs track '*.bin'
git lfs track '*.data'
git lfs track '*.jpg'
git lfs track '*.png'

git add .gitattributes
```