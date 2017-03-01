---
layout: post
title:  "巧用Charles Rewrite 实现hybrid真机开发"
date:   2017-03-02 02:45:00 +0800
categories: jekyll 
---
作为一名"实践是检验真理的唯一标准"的拥护者,偶hybrid开发时有个 边撸代码边看真机效果 的好习惯.
在我们大Windows上开发不必多言,Fiddler神器 谁用谁知道! AutoResponse 功能重定义功能简直不能更爽!

但是...

最近喜欢上了mac....

没Fiddler? 哈哈,木问题,大Charles 来也!

----------正文分割线--------

真机(iPhone)上装有 uat环境测试包

是的!就是在测试包里 开发新功能!

项目代码背景: 

front:
    coffeescript + webpack(webpack-dev-server) + gulp +HybridBridge + ...
backend:
    node + pm2 + tracer + dot + ....

部分页面纯frontend 渲染, 部分页面还得加上 后端node dot渲染.

因为 Hybrid app 有以下几个硬性要求:
1.必须https 不然请求发不出去
2.不能用除443 80 以外端口

所以最终解决办法是 使用 Charles Rewrite :
1.https://xxx.com/ -> http://localhost:8080/
2.将url里的端口删掉(webpack-dev-server用到的)  然后 https://xxx.com/publish/ -> http://localhost:3000/publish

---------正文结束-----------

总结:

最终解决方案很简单,不到几分钟就可以搞定. 但是由于一些挂件资料不知道,导致走了很多弯路 (尤其是那两个约束条件,最终是Charles里调试了好多才总结出的)

回头尝试另外一种更简单的解决办法....

对了,mac vpn 下 local IP 咋一直ping 不通呢??? 继续研究下...



