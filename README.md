## 这是个啥

在docker中运行sqlmap，更多关关于[sqlmap](http://sqlmap.org/)

## 怎么使用

为了可以交互式的去输入sqlmap中的一些命令，所以加上-it

为了可以使用sqlmap的-r参数，所以加上-v

像下面这样
```
docker run -it --rm -v /dataPack:/sqlmap/dataPack test:test -r dataPack/1.txt
```

## todo
1、将sqlmap导入我的仓库，并加强

2、将dockerfile中的sqlmap地址改为修改后的“增强版”sqlmap