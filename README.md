# Developing Backbone.js Applications
# 开发 Backbone.js 应用

## About
## 关于

This is the home of [Developing Backbone.js Applications](http://shop.oreilly.com/product/0636920025344.do), an open-source book about the Backbone.js library for structuring JavaScript applications. It is released under a 
Creative Commons Attribution-Noncommercial-No Derivative Works 3.0 United States License and is currently available for early purchase via O'Reilly if you would like to support the project.

zh: 这里是[《开发 Backbone.js 应用》](http://shop.oreilly.com/product/0636920025344.do) 这本开源图书的主页，Backbone.js 库致力于 JavaScript 应用的结构。这本书以“署名-非商业性使用-禁止演绎 3.0 美国”协议发行，如果你乐于支持这个项目，也可以通过 O'Reilly 购买。

## Contributing
## 做贡献

We appreciate any and all efforts to help improve the book. Please note that the repository is structured as follows:

zh: 我们欣赏所有为改善本书而做的努力。请注意代码仓库以如下方式组织：

* chapters - contains the source Markdown for each chapter. This is compiled into the HTML, ePub, Mobi and other formats found in the root of the project.
* chapters —— 包含每一章的原始 Markdown 文件。这些文件将被编译成 HTML、ePub、Mobi 和其他格式，并出现在本项目的根目录中。
* build - contains templates and metadata for compiling the book
* build —— 包含编译本书用到的模板和元数据文件。
* img - contains image assets for the project
* img —— 包含本项目的图片资源。
* practicals - contains the source code for practicals
* practicals —— 包含实践例子的源代码。

If you would like to submit pull requests, please feel free to apply them against the relevant markdown file in `chapter`. These can be previewed by running the build script via `make`, which will also generate updated versions of the other formats we support. Please ensure that you are only submitting the modified chapter file for your changes and not the compiled HTML/other format binaries. 

zh: 如果你想要提交“拉请求”，请在`chapter`目录中修改相关 markdown 文件，不要拘束。你可以通过`make`工具使用构建脚本预览，这样可以同时生成我们支持的其他格式的更新版本。请确认你只提交你更改的章节文件，不要把编译生成的 HTML 或其他二进制格式也提交了。

## Reviews
## 评论

If you are interested in leaving a review to let others know what you thoughts of the book this can be done through [O'Reilly](http://shop.oreilly.com/product/0636920025344/ReviewSubmit.do?sortby=publicationDate?pageId=0636920025344.IP).

zh: 
如果你对在留下评论——从而让其他人知道你对本书的思考——感兴趣，你可以通过 [O'Reilly](http://shop.oreilly.com/product/0636920025344/ReviewSubmit.do?sortby=publicationDate?pageId=0636920025344.IP) 来做到。

## Building
## 构造

You can build the book using `make` or `make -f Makefile`. This will output the HTML, ePub, Mobi, PDF and RTF versions of the book. 

zh: 你可以使用“make”或“make -f Makefile”构建这本书。这会以 HTML、ePub、Mobi、PDF 和 RTF 格式输出这本书。

Note: At this time, generating all of the above formats should be straight-forward with the exception of the PDF. We have an open [pull-request](https://github.com/addyosmani/backbone-fundamentals/pull/369) for `xelatex` which is being considered and better guides for working around cross-platform PDF issues will be supplied as time allows.

zh: 注意：目前，除了 PDF 之外，输出其他格式都十分直接。我们有个关于“xelatex”的开放 [pull-request](https://github.com/addyosmani/backbone-fundamentals/pull/369) 正在被我们考量，那是个十分好的指南。随着时间推移，关于跨平台 PDF 问题都会提供到上面的。

### Dependencies
### 依赖库

* Make
* [Pandoc](https://github.com/jgm/pandoc)
* pdflatex (and recommended latex fonts)

#### Linux Debian based distros:
#### 基于 Linux Debian 的发行版：

<code>apt-get install pandoc texlive-latex-base texlive-fonts-recommended cm-super etoolbox</code>
