## Prelude
## 序章

![](img/logo.jpg)

Not so long ago, "data-rich web application" was an oxymoron. Today, these applications are everywhere and you need to know how to build them.

zh: 不久之前，“富数据 Web 应用”还是个自相矛盾的说法。如今，这些应用却已随处可见，而你还得学会去构造它们。

Traditionally, web applications left the heavy-lifting of data to servers that pushed HTML to the browser in complete page loads. The use of client-side JavaScript was limited to improving the user experience. Now this relationship has been inverted - client applications pull raw data from the server and render it into the browser when and where it is needed.

zh: 传统 Web 应用将大量数据加工工作交给服务器处理，服务器在页面加载过程中将完整的 HTML 传送给浏览器。客户端 JavaScript 对于提高用户体验作用十分有限。如今这个关系反了过来——客户端应用将原始数据从服务器原样获取，然后按需渲染到浏览器中。

Think of the Ajax shopping cart which doesn't require a refresh on the page when adding an item to your basket. Initially, jQuery became the go-to library for this paradigm. Its nature was to make Ajax requests then update text on the page and so on. However, this pattern with jQuery revealed that we have implicit model data on the client side. With the server no longer being the only place that knows about our item count, it was a hint that there was a natural tension and pull of this evolution. 

zh: 试想 Ajax 购物车功能，当你将一件商品加入时不需要刷新页面。最初，使用 jQuery 成为解决这类问题的必由之路。它的本质方式是发起 Ajax 请求，然后更新页面上的文字，等等。然而，这种通过 jQuery 的模式表明我们在客户端隐含了模型数据，服务端不再是唯一了解我们商品数量的地方了。这暗示我们有一股自然张力推动这场进化。

The rise of arbitrary code on the client-side which can talk to the server however it sees fit has meant an increase in client-side complexity. Good architecture on the client has gone from an afterthought to essential - you can't just hack together some jQuery code and expect it to scale as your application grows. Most likely, you would end up with a nightmarish tangle of UI callbacks entwined with business logic, destined to be discarded by the poor soul who inherits your code.

zh: 虽然在客户端随意写代码也可以跟服务端交流，但是这意味着客户端复杂度越来越高。以事后诸葛亮的目光去看基础代码，客户端架构的发光之处将消失殆尽——你不能指望东拼西凑的 jQuery 代码能良好地随着你的应用规模一块儿扩展。最可能的结果是，你将遭受 UI 回调与业务逻辑缠绕在一起的可怕混乱，然后注定将被接替你续写代码的倒霉蛋忽略。

Thankfully, there are a growing number of JavaScript libraries that can help improve the structure and maintainability of your code, making it easier to build ambitious interfaces without a great deal of effort. [Backbone.js](http://documentcloud.github.com/backbone/) has quickly become one of the most popular open-source solutions to these issues and in this book we will take you through an in-depth walkthrough of it.

zh: 谢天谢地，越来越多的 JavaScript 库可以帮你提高代码的结构和可维护性，同时不用下多少功夫你就能创造出伟大的界面。[Backbone.js](http://documentcloud.github.com/backbone/) 已经成为最流行的开源解决方案方案之一，这本书将带你深入走进它的世界。

Begin with the fundamentals, work your way through the exercises, and learn how to build an application that is both cleanly organized and maintainable. If you are a developer looking to write code that can be more easily read, structured, and extended - this guide can help.

zh: 本书将从基础开始，引导你完成各种练习，从而使你学会如何构建组织清晰、可维护性高的应用。如果你是个渴求写出可读性好、组织清晰、可扩展性高的代码的开发者——这本手册能帮上忙的。

Improving developer education is important to me, which is why this book is released under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported [license](http://creativecommons.org/licenses/by-nc-sa/3.0/). This means you can purchase or grab a copy of the book for [free](http://addyosmani.github.com/backbone-fundamentals/) or help to further [improve](https://github.com/addyosmani/backbone-fundamentals/) it. Corrections to existing material are always welcome and I hope that together we can provide the community with an up-to-date resource that is of help. 

zh: 我看重提高开发人员的知识水平，因此我将此书以“署名-非商业性使用-相同方式共享 3.0 未本地化版本 (CC BY-NC-SA 3.0) [协议](http://creativecommons.org/licenses/by-nc-sa/3.0/deed.zh)”发布。这意味着你可以购买，也可以 [免费](http://addyosmani.github.com/backbone-fundamentals/) 获得这本书，甚至帮忙 [改进](https://github.com/addyosmani/backbone-fundamentals/)这本书。欢迎改正本书的当前内容，同时希望我们可以携手努力为开发者社群提供与时俱进的资料，这是很有必要的。

My extended thanks go out to [Jeremy Ashkenas](https://github.com/jashkenas) and [DocumentCloud](http://www.documentcloud.org) for creating Backbone.js and [these](https://github.com/addyosmani/backbone-fundamentals/contributors) members of the community for their assistance making this project far better than I could have imagined.

zh: 我还要感谢创造 Backbone.js 的 [Jeremy Ashkenas](https://github.com/jashkenas) 和 [DocumentCloud](http://www.documentcloud.org)。还有[社群的这些成员](https://github.com/addyosmani/backbone-fundamentals/contributors)，在他们的协助下，这个项目的好到远远超出我的想象。

## Target Audience
## 目标读者

This book is targeted at novice to intermediate developers wishing to learn how to better structure their client-side code. An understanding of JavaScript fundamentals is required to get the most out of it, however we have tried to provide a basic description of these concepts where possible.

zh: 这本书适合想要学习将客户端代码结构做得更好的菜鸟到中级开发人员。想要收获最大的话，了解 JavaScript 的基础是必须的。当然我们也尽力提供这些概念的基础知识。

## Acknowledgements
## 致谢

I am indebted to the fantastic work done by the technical reviewers who helped review and improve this book. Their knowledge, energy, and passion have helped shape it into a better learning resource and they continue to serve as a source of inspiration. Thanks go out to:

zh: 技术审稿们帮着我审阅和改进这本书，他们做得十分出色，我很感激。他们的学识、活力和热情把本书打造成更好的学习资源，他们也继续作为我的灵感之源。由衷感谢：

* [Marc Friedman](https://github.com/dcmaf)
* [Derick Bailey](https://github.com/derickbailey)
* [Jeremy Ashkenas](https://github.com/jashkenas)
* [Samuel Clay](https://github.com/samuelclay)
* [Mat Scales](http://github.com/wibblymat)
* [Alex Graul](https://github.com/alexgraul)
* [Dusan Gledovic](https://github.com/g6scheme)
* [Sindre Sorhus](https://github.com/sindresorhus)

I would also like to thank my loving family for their patience and support while I worked on this book, as well as my brilliant editor Mary Treseler.
zh: 我还要感谢我亲爱的家人，在我写作本书时，他们给了我莫大的耐心与支持。还有才华横溢的编辑 Mary Treseler。

## Credits
## 工作人员

None of this work would have been possible without the time and effort invested by the other developers and authors in the community who helped contribute to it. I would like to extend my thanks to: 
zh: 若没有社群里其他参与的开发人员和作者投入的时间和努力，这项工作不可能完成。我想接着感谢：

* Derick and Marc (once again) （再一次）
* [Ryan Eastridge](https://github.com/eastridge)
* [Jack Franklin](https://github.com/jackfranklin)
* [David Amend](https://github.com/raDiesle)
* [Mike Ball](https://github.com/mdb)
* Will Sulzer
* [Uģis Ozols](https://github.com/ugisozols)
* [Björn Ekengren](https://github.com/Ekengren)

as well as our other excellent [contributors](https://github.com/addyosmani/backbone-fundamentals/graphs/contributors) that made this project possible.
zh: 还有使这个项目成为可能的杰出的[贡献者们](https://github.com/addyosmani/backbone-fundamentals/graphs/contributors)。

## Target Version
## 适合版本

Developing Backbone.js Applications targets Backbone.js 1.1.x (and Underscore 1.6.x) and will actively attempt to stay up to date with more recent versions of these libraries. Where possible, if you find using a newer version of Backbone breaks an example, please consult the official guide to [upgrading](http://backbonejs.org/#upgrading) as it contains instructions for how to work around breaking changes. StackOverflow also contains many excellent examples of how other users are handling updating their code.

zh: 本书适合开发 Backbone.js 应用对应 Backbone.js 版本为 1.1.x （同时 Underscore 版本为 1.6.x），同时我们会积极努力地保持与这些库的更新版本同步。如果你使用更新版本的 Backbone，无法运行某个例子时，请参阅[官方更新指南](http://backbonejs.org/#upgrading)，那里面有关于如何处理重大更改的指示。StackOverflow 上也有许多其他用户处理代码更新的出色例子。

## Reading
## 推荐阅读

I assume your level of knowledge about JavaScript goes beyond the basics and as such certain topics such as object literals are skipped. If you need to learn more about the language, I am happy to suggest:

zh: 我假设你的 JavaScript 水平超凡，于是像对象字面值（Object Literals）这类主题都被我略过了。如果你想对这门语言了解更多，我乐意推荐以下资源：

* [Eloquent JavaScript](http://eloquentjavascript.net/)
* [JavaScript: The Definitive Guide](http://shop.oreilly.com/product/9780596805531.do) by David Flanagan (O’Reilly)
* [Effective JavaScript](http://www.informit.com/store/effective-javascript-68-specific-ways-to-harness-the-9780321812186) by David Herman (Pearson)
* [JavaScript: The Good Parts](http://shop.oreilly.com/product/9780596517748.do) by Douglas Crockford (O’Reilly)
* [Object-Oriented JavaScript](http://www.amazon.com/Object-Oriented-Javascript-Stoyan-Stefanov/dp/1847194141) by Stoyan Stefanov (Packt Publishing)

