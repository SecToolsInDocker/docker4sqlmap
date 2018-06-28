## 这是个啥

在docker中运行sqlmap，更多关于[sqlmap](http://sqlmap.org/)

## 怎么使用

为了可以交互式的去输入sqlmap中的一些命令，所以加上-it

为了可以使用sqlmap的-r参数，所以加上-v，其中第一个本地路径为绝对路径，第二个挂载到docker里的为相对路径

像使用sqlmap一样使用docker4sqlmap

像下面这样
```
docker run -it --rm -v C:\Users\nanch\dataPack:/sqlmap/dataPack nancheal/docker4sqlmap -r dataPack/1.txt -v 3
```

## finish

- [x] 安装sqlalchemy，增加对sqlmap -d的支持

- [x] 优化sqlmap读入参数的模式，尊重用户的使用习惯使用和sqlmap一样的选项输入方式

## todo
- [ ] 将sqlmap导入我的仓库，并加强

- [ ] 将dockerfile中的sqlmap地址改为修改后的“增强版”sqlmap