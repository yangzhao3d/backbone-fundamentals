# Introduction |zh: 简介

Frank Lloyd Wright once said “You can’t make an architect. You can however open the doors and windows toward the light as you see it.” In this book, I hope to shed some light on how to improve the structure of your web applications, opening doors to what will hopefully be more maintainable, readable applications in your future.

zh: 弗兰克·劳埃德·赖特（Frank Lloyd Wright，建筑师）曾经说道：你不能成为一个建筑师，但是你可以打开门窗朝着光知道你看到。”希望这本书能为提高 Web 应用结构给你带来一些启发，为你打开创造更易维护、可读性更强应用的大门。

The goal of all architecture is to build something well; in our case, to craft code that is enduring and delights both ourselves and the developers who will maintain our code long after we are gone. We all want our architecture to be simple, yet beautiful.

zh: 所有架构的目标都是为了把东西做得更好。在我们这个案例中，目标就是精巧写出长期有用的代码，使我们自己和我们走后维护我们代码的人都感到愉悦。我们都希望我们的架构既简单又优雅。

Modern JavaScript frameworks and libraries can bring structure and organization to your projects, establishing a maintainable foundation right from the start. They build on the trials and tribulations of developers who have had to work around callback chaos similar to that which you are facing now or may in the near future.

zh: 可以用现代 JavaScript 框架和库来组织你的项目，以期从一开始就建立一个可维护的基础。这些框架和库都是开发人员历经回调混乱的磨难建立起来的，这些磨难与你当前面临或在不久将来可能将要遇到的类似。

When developing applications using just jQuery, the piece missing is a way to structure and organize your code. It's very easy to create a JavaScript app that ends up a tangled mess of jQuery selectors and callbacks, all desperately trying to keep data in sync between the HTML for your UI, the logic in your JavaScript, and calls to your API for data.

zh: 当仅仅用 jQuery 开发应用时，缺少的那一块正式是你赖以构建组织代码的方式。创建的 JavaScript 应用很容易最终就变成一堆杂乱无章的 jQuery 选择器和回调，因为这些东西都需要在 HTML 和你的 UI、 JavaScript中的逻辑和请求你的 API 数据获取之间同数据。

Without something to help tame the mess, you're likely to string together a set of independent plugins and libraries to make up the functionality or build everything yourself from scratch and have to maintain it yourself. Backbone solves this problem for you, providing a way to cleanly organize code, separating responsibilities into recognizable pieces that are easy to maintain.

zh: 如果没有些工具帮你抑制混乱的话，你很容易就串起一绺独立的彼此独立的插件和类库来实现功能，或者你自己从零开始创造你所有需要的东西，然后自己维护。Backbone 为你解决了这个问题，提供一种组织代码的清晰方式、分离职责到可识别的易于维护的片段中。

In "Developing Backbone.js Applications," I and a number of other experienced authors will show you how to improve your web application structure using the popular JavaScript library, Backbone.js

zh: 在本书中，我将和许多有经验的作者一起为你展现如何使用流行的 JavaScript 库—— Backbone.js ——提升你的 Web 应用结构。

### What Is MVC? |zh: 什么是 MVC？

A number of modern JavaScript frameworks provide developers an easy path to organizing their code using variations of a pattern known as MVC (Model-View-Controller). MVC separates the concerns in an application into three parts:

* Models represent the domain-specific knowledge and data in an application. Think of this as being a ‘type’ of data you can model — like a User, Photo, or Todo note. Models can notify observers when their state changes.
* Views typically constitute the user interface in an application (e.g., markup and templates), but don’t have to be. They observe Models, but don’t directly communicate with them.
* Controllers handle input (e.g., clicks, user actions) and update Models. 

Thus, in an MVC application, user input is acted upon by Controllers which update Models. Views observe Models and update the user interface when changes occur.

JavaScript MVC frameworks don’t always strictly follow the above pattern. Some solutions (including Backbone.js) merge the responsibility of the Controller into the View, while other approaches add additional components into the mix.

For this reason we refer to such frameworks as following the MV* pattern; that is, you’re likely to have a Model and a View, but a distinct Controller might not be present and other components may come into play.

### What is Backbone.js? |zh: Backbone.js 是什么？

![](img/backbonejsorg.jpg)

Backbone.js is a lightweight JavaScript library that adds structure to your client-side code. It makes it easy to manage and decouple concerns in your application, leaving you with code that is more maintainable in the long term.

Developers commonly use libraries like Backbone.js to create single-page applications (SPAs). SPAs are web applications that load into the browser and then react to data changes on the client side without requiring complete page refreshes from the server.

Backbone is mature, popular, and has both a vibrant developer community as well as a wealth of plugins and extensions available that build upon it. It has been used to create non-trivial applications by companies such as Disqus, Walmart, SoundCloud and LinkedIn.

Backbone focuses on giving you helpful methods for querying and manipulating your data rather than re-inventing the JavaScript object model. It's a library, rather than a framework, that plays well with others and scales well, from embedded widgets to large-scale applications.

As it's small, there is also less your users have to download on mobile or slower connections. The entire Backbone source can be read and understood in just a few hours.

### When Do I Need A JavaScript MVC Framework? |zh: 我什么时候需要一个 JavaScript MVC 框架？

When building a single-page application using JavaScript, whether it involves a complex user interface or is simply trying to reduce the number of HTTP requests required for new Views, you will likely find yourself inventing many of the pieces that make up an MV* framework.

At the outset, it isn’t terribly difficult to write your own application framework that offers some opinionated way to avoid spaghetti code; however, to say that it is equally as trivial to write something as robust as Backbone would be a grossly incorrect assumption.

There’s a lot more that goes into structuring an application than tying together a DOM manipulation library, templating, and routing. Mature MV* frameworks typically include not only the pieces you would find yourself writing, but also include solutions to problems you’ll find yourself running into later on down the road. This is a time-saver that you shouldn’t underestimate the value of.

So, where will you likely need an MV* framework and where won’t you?

If you’re writing an application where much of the heavy lifting for view rendering and data manipulation will be occurring in the browser, you may find a JavaScript MV* framework useful. Examples of applications that fall into this category are GMail, NewsBlur and the LinkedIn mobile app.

These types of applications typically download a single payload containing all the scripts, stylesheets, and markup users need for common tasks and then perform a lot of additional behavior in the background. For instance, it’s trivial to switch between reading an email or document to writing one without sending a new page request to the server.

If, however, you’re building an application that still relies on the server for most of the heavy-lifting of page/view rendering and you’re just using a little JavaScript or jQuery to make things more interactive, an MV* framework may be overkill. There certainly are complex Web applications where the partial rendering of views can be coupled with a single-page application effectively, but for everything else, you may find yourself better sticking to a simpler setup.

Maturity in software (framework) development isn't simply about how long a framework has been around. It's about how solid the framework is and more importantly how well it's evolved to fill its role. Has it become more effective at solving common problems? Does it continue to improve as developers build larger and more complex applications with it?


### Why Consider Backbone.js? |zh: 为什么要用 Backbone.js？

Backbone provides a minimal set of data-structuring (Models, Collections) and user interface (Views, URLs) primitives that are helpful when building dynamic applications using JavaScript. It's not opinionated, meaning you have the freedom and flexibility to build the best experience for your web application how you see fit. You can either use the prescribed architecture it offers out of the box or extend it to meet your requirements.

The library doesn't focus on widgets or replacing the way you structure objects - it just supplies you with utilities for manipulating and querying data in your application. It also doesn't prescribe a specific template engine - while you are free to use the Micro-templating offered by Underscore.js (one of its dependencies), views can bind to HTML constructed using your templating solution of choice.

Looking at the [large](http://backbonejs.org/#examples) number of applications built with Backbone, it's clear that it scales well. Backbone also works quite well with other libraries, meaning you can embed Backbone widgets in an application written with AngularJS, use it with TypeScript, or just use an individual class (like Models) as a data backer for simpler apps.

There are no performance drawbacks to using Backbone to structure your application. It avoids run loops, two-way binding, and constant polling of your data structures for updates and tries to keep things simple where possible. That said, should you wish to go against the grain, you can of course implement such things on top of it. Backbone won't stop you.

With a vibrant community of plugin and extension authors, there's a likelihood that if you're looking to achieve some behavior Backbone is lacking, a complementary project exists that works well with it. This is made simpler by Backbone offering literate documentation of its source code, allowing anyone an opportunity to easily understand what is going on behind the scenes.

Having been refined over two and a half years of development, Backbone is a mature library that will continue to offer a minimalist solution for building better web applications. I regularly use it and hope that you find it as useful an addition to your toolbelt as I have.


### Setting Expectations |zh: 设定期许

The goal of this book is to create an authoritative and centralized repository of information that can help those developing real-world apps with Backbone. If you come across a section or topic which you think could be improved or expanded on, please feel free to submit an issue (or better yet, a pull-request) on the book's [GitHub site](https://github.com/addyosmani/backbone-fundamentals). It won't take long and you'll be helping other developers avoid the problems you ran into.

zh: 这本书的写作目标是提供一个权威的信息汇集之处，切实帮助那些实际使用 Backbone 开发应用的人。如果你发觉某个章节或主题可以改进或扩展，欢迎在本书的 [GitHub 站点](https://github.com/addyosmani/backbone-fundamentals)发布问题（issue）。相信用不了多久你就会帮到其他开发者，避免让他们陷入你曾经遇到的问题。

Topics will include MVC theory and how to build applications using Backbone's Models, Views, Collections, and Routers. I'll also be taking you through advanced topics like modular development with Backbone.js and AMD (via RequireJS), solutions to common problems like nested views, how to solve routing problems with Backbone and jQuery Mobile, and much more.

zh: 本书主题包括 MVC 理论，以及如何通过使用 Backbone 的模型、视图、集合和路由构建应用。我还会引你进入一些诸如通过 Backbone.js 和 AMD（通过 RequireJS）进行模块化开发、像嵌套视图之类常见问题的解决方法、如何解决 Backbone 和 jQuery Mobile 之间的路由问题等等之类的高级主题。

Here is a peek at what you will be learning in each chapter:

zh: 下面带你瞥一眼每一章你会学到东西的：

<i>Chapter 2, Fundamentals</i> traces the history of the MVC design pattern and introduces how it is implemented by Backbone.js and other JavaScript frameworks.

zh: <i>第二章  背景知识</i>：追溯 MVC 设计模式的历史并介绍 Backbone.js 和其他 JavaScript 框架是如何实现这种模式的。

<i>Chapter 3, Backbone Basics</i> covers the major features of the Backbone.js core and the technologies and techniques you will need to know in order to apply it.

zh: <i>第三章  Backbone 基础</i>：涉及 Backbone.js 核心的主要特性，以及为了应用它你需要知道的技术和技巧。

<i>Chapter 4, Exercise 1: Todos - Your First Backbone.js App</i> takes you step-by-step through development of a simple client-side Todo List application.

zh: <i>第四章  练习一：你的第一个 Backbone.js 应用——待办事项列表</i>：一步步带你开发一个简单的客户端应用——待办事项列表应用。

<i>Chapter 5, Exercise 2: Book Library - Your First RESTful（符合 REST 原则） Backbone.js App</i> walks you through development of a Book Library application which persists its model to a server using a REST（表现层状态转换） API.

zh: <i>第五章  练习二：你的第一个 RESTful Backbone.js 应用——图书馆</i>：带你走进开发一个图书馆应用的全过程，通过一个 REST API 保持它的模型。

<i>Chapter 6, Backbone Extensions</i> describes Backbone.Marionette and Thorax, two extension frameworks which add features to Backbone.js that are useful for developing large-scale applications.

zh: <i>第六章  Backbone 扩展</i>：讲解了 Backbone.Marionette 和 Thorax 两个框架，它们为 Backbone.js 添加了功能，对开发大型应用十分有用。

<i>Chapter 7, Common Problems and Solutions</i> reviews common issues you may encounter when using Backbone.js and ways of addressing them.

zh: <i>第七章  常见问题和解决方案</i>：回顾了你使用 Backbone.js 时可能遇到的常见问题，并给出解决办法。

<i>Chapter 8, Modular Development</i> looks at how AMD modules and RequireJS can be used to modularize your code.

zh: <i>第八章  模块化开发</i>：带你领略如何通过 AMD 模块和 RequireJS 模块化你的代码。

<i>Chapter 9, Exercise 3: Todos - Your First Modular Backbone + RequireJS App</i> takes you through rewriting the app created in Exercise 1 to be more modular with the help of RequireJS.

zh: <i>第九章  练习三：你的第一个模块化 Backbone + RequireJS 应用——待办事项列表</i>：带你走进重写练习一应用，练习在 RequireJS 帮助下让你的应用模块化。

<i>Chapter 10, Paginating Backbone Requests & Collections</i> walks through how to use the Backbone.Paginator plugin to paginate data for your Collections.

zh: <i>第十章  Backbone 请求和集合的分页</i>：走进如何使用 Backbone.Paginator 插件来将集合数据分页的技术。

<i>Chapter 11, Backbone Boilerplate And Grunt BBB</i> introduces powerful tools you can use to bootstrap a new Backbone.js application with boilerplate code.

zh: <i>第十一章  Backbone 样板和 Grunt BBB</i>：介绍可以通过使用样板代码来生成一个新的 Backbone.js 应用的强大工具。

<i>Chapter 12, Mobile Applications</i> addresses the issues that arise when using Backbone with jQuery Mobile.

zh：<i>第十二章  移动应用</i>：着墨于 Backbone 与 jQuery Mobile 结合所带来的问题。

<i>Chapter 13, Jasmine</i> covers how to unit test Backbone code using the Jasmine test framework.

zh: <i>第十三章  Jasmine</i>：介绍如何用 Jasmine 测试框架来对 Backbone 代码进行单元测试。

<i>Chapter 14, QUnit</i> discusses how to use QUnit for unit testing.

zh: <i>第十四章  QUnit</i>：探讨如何用 QUnit 做单元测试。

<i>Chapter 15, SinonJS</i> discusses how to use SinonJS for unit testing your Backbone apps.

zh: <i>第十五章  SinonJS</i>：探讨如何用 SinonJS 为你的 Backbone 应用做单元测试。

<i>Chapter 16, Resources</i> provides references to additional Backbone-related resources.

zh: <i>第十六章  资源</i>：提供其他与 Backbone 相关资源的参阅方式。

<i>Chapter 17, Conclusions</i> wraps up our tour through the world of Backbone.js development.

zh: <i>第十七章  总结</i>：完成我们的 Backbone.js 开发世界之旅。

<i>Chapter 18, Appendix</i> returns to our design pattern discussion by contrasting MVC with the Model-View-Presenter (MVP) pattern and examines how Backbone.js relates to both. A walkthrough of writing a Backbone-like library from scratch and other topics are also covered.

zh: <i>第十八章  附录</i>：回到我们关于设计模式的讨论——比较 MVC 与 MVP（Model-View-Presenter，模型——视图——展示器）模式，检验 Backbone.js 与二者之间的关系。同时也包括从头开始写类似 Backbone 的库和一些其他主题。