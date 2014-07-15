# Introduction |zh: 简介

Frank Lloyd Wright once said “You can’t make an architect. You can however open the doors and windows toward the light as you see it.” In this book, I hope to shed some light on how to improve the structure of your web applications, opening doors to what will hopefully be more maintainable, readable applications in your future.

zh: 弗兰克·劳埃德·赖特（Frank Lloyd Wright，建筑师）曾经说道：“你不能成为造物主，但是你可以打开门窗，朝向光亮，直到你看到祂。”希望这本书能为提高 Web 应用结构给你带来一些光亮，为你打开创造更易维护、可读性更强应用的大门。

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

zh: 当前许多 JavaScript 框架都给开发者一个简单的途径去组织代码，那就是使用被称作 MVC（模型——视图——控制器） 的模式的各种变种。 MVC 把我们对一个应用的关注点分成三个方面：

* Models represent the domain-specific knowledge and data in an application. Think of this as being a ‘type’ of data you can model — like a User, Photo, or Todo note. Models can notify observers when their state changes. |zh: “模型”代表应用中不同领域的知识和数据。把它想象成你可以建模的数据类型—— 就像一个用户、一张照片、或者待办事项笔记。模型可以在发生状态变化时通知监视者。
* Views typically constitute the user interface in an application (e.g., markup and templates), but don’t have to be. They observe Models, but don’t directly communicate with them. |zh: “视图”一般是应用的用户界面（如标记和模板）的主要构成成分，但不仅限这些。它们监视着模型，但不与模型之间交流。
* Controllers handle input (e.g., clicks, user actions) and update Models. |zh: “控制器”处理输入（如点击、用户动作）并更新模型。

Thus, in an MVC application, user input is acted upon by Controllers which update Models. Views observe Models and update the user interface when changes occur.

zh: 因此，在一个 MVC 应用中，用户输入作用于控制器，控制器更新模型。视图监控模型，当模型发生变化时更新用户界面。

JavaScript MVC frameworks don’t always strictly follow the above pattern. Some solutions (including Backbone.js) merge the responsibility of the Controller into the View, while other approaches add additional components into the mix.

zh: JavaScript 的 MVC 框架不总是严格遵循上述模式的。许多方案（包括 Backbone.js）将控制器的职责合并到视图中，同时在这个组合中加入了一些其他组件。

For this reason we refer to such frameworks as following the MV* pattern; that is, you’re likely to have a Model and a View, but a distinct Controller might not be present and other components may come into play.

zh: 因此我们将这类框架统称为 MV* 模式，也就是说可能会有模型层和视图层，但一个明显的视图层不会存在，而其他组件则会发挥作用。

### What is Backbone.js? |zh: Backbone.js 是什么？

![](img/backbonejsorg.jpg)

Backbone.js is a lightweight JavaScript library that adds structure to your client-side code. It makes it easy to manage and decouple concerns in your application, leaving you with code that is more maintainable in the long term.

zh: Backbone.js 是一个轻量级 JavaScript 库，可以让你的客户端代码结构更好。它让你更好的管理和解耦应用中的关注点，使你的代码长期保持更好的可维护性。

Developers commonly use libraries like Backbone.js to create single-page applications (SPAs). SPAs are web applications that load into the browser and then react to data changes on the client side without requiring complete page refreshes from the server.

zh: 开发者主要用 Backbone.js 这样的库创建单页应用（single-page applications，SPA）。这类 Web 应用被加载到浏览器中，在客户端对数据变化做出反应，不需要从服务端获得完整的页面刷新。

Backbone is mature, popular, and has both a vibrant developer community as well as a wealth of plugins and extensions available that build upon it. It has been used to create non-trivial applications by companies such as Disqus, Walmart, SoundCloud and LinkedIn.

zh: Backbone 成熟、流行，既有充满生气的的开发者社区，又有在其之上构建的十分丰富的插件和扩展。它甚至被像 Disqus、沃尔玛、SoundCloud和LinkedIn这样的大公司使用制造出伟大的应用。

Backbone focuses on giving you helpful methods for querying and manipulating your data rather than re-inventing the JavaScript object model. It's a library, rather than a framework, that plays well with others and scales well, from embedded widgets to large-scale applications.

zh: Backbone 致力于提供帮助你查询、操作数据的有效方法，而不是重新发明 JavaScript 对象模型。他是一个库，而不是一个框架，因此无论是用来做嵌入的小组件或是大型应用，与其他的框架都没有冲突，可扩展性好。

As it's small, there is also less your users have to download on mobile or slower connections. The entire Backbone source can be read and understood in just a few hours.

zh: 正因为它小，在移动端或慢速网络连接的情况下，用户需要下载的数据量夜宵。而且你在几个小时内就能读懂 Backbone 的全部源码。

### When Do I Need A JavaScript MVC Framework? |zh: 我什么时候需要一个 JavaScript MVC 框架？

When building a single-page application using JavaScript, whether it involves a complex user interface or is simply trying to reduce the number of HTTP requests required for new Views, you will likely find yourself inventing many of the pieces that make up an MV* framework.

zh: 当你用 JavaScript 构建一个单页应用的时候，不管这个应用有复杂用户界面还是只是为了减少新视图所需的 HTTP 请求数量，你都会发现你自己创造了许多构成 MV* 框架的代码片段。

At the outset, it isn’t terribly difficult to write your own application framework that offers some opinionated way to avoid spaghetti code; however, to say that it is equally as trivial to write something as robust as Backbone would be a grossly incorrect assumption.

zh: 刚开始的时候，固执地写自己的框架是避免意大利面条般的代码的一种方式。这种方式并不困难，然而，认为写个像 Backbone 一样的健壮的框架是一件稀松平常的事情就大错特错了。

There’s a lot more that goes into structuring an application than tying together a DOM manipulation library, templating, and routing. Mature MV* frameworks typically include not only the pieces you would find yourself writing, but also include solutions to problems you’ll find yourself running into later on down the road. This is a time-saver that you shouldn’t underestimate the value of.

zh: 组织应用的库除了要调用组合一个 DOM 操作库、处理模板和处理路由之外，还有许多其他的工作要去做。通常成熟的 MV* 框架不仅包含你想要写的这些代码，还包括你在开发的道路上稍后遇到的问题的解决方案。成熟的库可以为你节约宝贵的时间，不要低估它们。

So, where will you likely need an MV* framework and where won’t you?

zh: 那么，你在哪些地方更需要 MV* 框架？哪些地方不需要呢？

If you’re writing an application where much of the heavy lifting for view rendering and data manipulation will be occurring in the browser, you may find a JavaScript MV* framework useful. Examples of applications that fall into this category are GMail, NewsBlur and the LinkedIn mobile app.

zh: 如果你在写的应用的需要在浏览器里进行视图渲染和数据操作的大量数据加工工作，JavaScript MV* 框架会很有用的。这种应用的例子包括 GMail、NewsBlur 和 LinkedIn 的移动应用。

These types of applications typically download a single payload containing all the scripts, stylesheets, and markup users need for common tasks and then perform a lot of additional behavior in the background. For instance, it’s trivial to switch between reading an email or document to writing one without sending a new page request to the server.

zh: 这些类型的应用通常通过一次性下载部署包，包含所有脚本、样式和用户需要的常见任务标记，然后在后台执行许多附加操作。这样像从阅读邮件、文档界面切换到写界面就不需要向服务器发送页面请求了。

If, however, you’re building an application that still relies on the server for most of the heavy-lifting of page/view rendering and you’re just using a little JavaScript or jQuery to make things more interactive, an MV* framework may be overkill. There certainly are complex Web applications where the partial rendering of views can be coupled with a single-page application effectively, but for everything else, you may find yourself better sticking to a simpler setup.

zh: 如果你构建的应用对于页面/视图的大量加工工作依然大量依赖服务器处理，你只用到一点儿 JavaScript 或 jQuery 来增强交互性，MV* 框架就有点大(jiao)材(wang)小(guo)用(zheng)了。当然，复杂的 Web 应用中视图的部分渲染可以有效结合单页应用的形式。但对于所有其他的情况，你会发现还是简单的搭配更适合。

Maturity in software (framework) development isn't simply about how long a framework has been around. It's about how solid the framework is and more importantly how well it's evolved to fill its role. Has it become more effective at solving common problems? Does it continue to improve as developers build larger and more complex applications with it?

zh: 软件（框架）发展的成熟度不只是简单地由一个框架出现的时长——更是由它的可靠性——所决定，当然更重要的是它在自己的角色上的进化程度：用它解决常见问题更有效吗？在开发者们开发更大更复杂的应用的时候它是否跟着一同进步呢？

### Why Consider Backbone.js? |zh: 为什么要用 Backbone.js？

Backbone provides a minimal set of data-structuring (Models, Collections) and user interface (Views, URLs) primitives that are helpful when building dynamic applications using JavaScript. It's not opinionated, meaning you have the freedom and flexibility to build the best experience for your web application how you see fit. You can either use the prescribed architecture it offers out of the box or extend it to meet your requirements.

zh: Backbone 对使用 JavaScript 编写动态应用提供了数据结构化（模型、集合）和用户界面（视图、URL）的有用的原语的最小组合。同时它也不武断，也解释说你可以自由灵活地根据你喜爱的方式构建你的 Web 应用最好的方式：你既可以使用它提供的良好架构或根据你的需要扩展它。

The library doesn't focus on widgets or replacing the way you structure objects - it just supplies you with utilities for manipulating and querying data in your application. It also doesn't prescribe a specific template engine - while you are free to use the Micro-templating offered by Underscore.js (one of its dependencies), views can bind to HTML constructed using your templating solution of choice.

这个库并非关注小控件或替代你结构化对象的方式，它只是为你的应用提供操作和查询数据的实用工具。它也没规定必须用哪个模板引擎——你可以选择由 Underscore.js（Backbone.js依赖它）提供的微型模板引擎，视图可以根据你选择的解决方案绑定 HTML。

Looking at the [large](http://backbonejs.org/#examples) number of applications built with Backbone, it's clear that it scales well. Backbone also works quite well with other libraries, meaning you can embed Backbone widgets in an application written with AngularJS, use it with TypeScript, or just use an individual class (like Models) as a data backer for simpler apps.

There are no performance drawbacks to using Backbone to structure your application. It avoids run loops, two-way binding, and constant polling of your data structures for updates and tries to keep things simple where possible. That said, should you wish to go against the grain, you can of course implement such things on top of it. Backbone won't stop you.

With a vibrant community of plugin and extension authors, there's a likelihood that if you're looking to achieve some behavior Backbone is lacking, a complementary project exists that works well with it. This is made simpler by Backbone offering literate documentation of its source code, allowing anyone an opportunity to easily understand what is going on behind the scenes.

Having been refined over two and a half years of development, Backbone is a mature library that will continue to offer a minimalist solution for building better web applications. I regularly use it and hope that you find it as useful an addition to your toolbelt as I have.


### Setting Expectations |zh: 期许

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
