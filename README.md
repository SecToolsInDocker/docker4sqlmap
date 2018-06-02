## 这是个啥

在docker中运行sqlmap，更多关于[sqlmap](http://sqlmap.org/)

## 怎么使用

为了可以交互式的去输入sqlmap中的一些命令，所以加上-it

为了可以使用sqlmap的-r参数，所以加上-v，其中第一个本地路径为绝对路径，第二个挂载到docker里的为相对路径

-O 参数里填写sqlmap的一些例如 -r、-v的参数

像下面这样
```
docker run -it --rm -v /Users/nanchealdu/workflow/PTETarget/dataPack:/sqlmap/dataPack test -O "-r dataPack/1.txt -v 3"
```

## finish

- [x] 安装sqlalchemy，增加对sqlmap -d的支持

- [x] 优化sqlmap读入参数的模式，解决 -v 等一些和docker本身冲突的选项

## todo
- [ ] 将sqlmap导入我的仓库，并加强

- [ ] 将dockerfile中的sqlmap地址改为修改后的“增强版”sqlmap