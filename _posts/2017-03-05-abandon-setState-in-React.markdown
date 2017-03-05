---
layout: post
date:   2017-03-05 22:11:58  +0800
categories: React
---
初学React 收到的第一个大礼包就是 state 了.所有的乱七八糟对的状态改变统一归state管理,然后一有变化就高性能通过虚拟dom机制渲染页面.听起来多么美妙!

wow!

然而,不能过分依赖setState 方法. 虽然看上去setState像极了一个同步方法,但

其实它不保证同步!!!

>setState() does not immediately mutate this.state but creates a pending state transition. Accessing this.state after calling this method can potentially return the existing value.

>There is no guarantee of synchronous operation of calls to setState and calls may be batched for performance gains.

>setState() will always lead to a re-render unless shouldComponentUpdate() returns false. If mutable objects are being used and conditional rendering logic cannot be implemented in shouldComponentUpdate(), calling setState() only when the new state differs from the previous state will avoid unnecessary re-renders.

LOOK! 人家官网都说了,不立即修改值!(但是我们肯定会re-render 哦!^_^)

呃呃,好吧. 涨知识了.

--------------------
 那该以什么样的正确姿势使用setState 捏?
 <br>哈哈,直接state.xx = xx 不完了么.


