---
layout: post
date:   2017-03-05 23:48:04  +0800
categories: react
---
我们知道,可以通过更改props来设置子module 初始值,但是想在外部环境更新时同时更新子模块的状态,进而重新渲染子模块,该怎么办呢?

The answer is:componentWillReceiveProps 方法.

>Invoked when a component is receiving new props. This method is not called for the initial render.

>Use this as an opportunity to react to a prop transition before render() is called by updating the state using this.setState(). The old props can be accessed via this.props. Calling this.setState() within this function will not trigger an additional render.

example:
{% highlight javascript %}
componentWillReceiveProps(){
    this.setState({selected:this.props.sequence});
}
{% endhighlight %}



