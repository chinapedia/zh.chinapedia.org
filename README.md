中国百科的目标是补全互联网上缺失的中文信息。本项目将会尝试将非中文的维基百科以及其它外语内容翻译成简体中文，这个过程会在GitHub上完成。关于本项目的更多内容请参考[chinapedia.org](https://chinapedia.org/)。

本项目刚刚启动，欢迎大家贡献内容和自动化代码。

## 工作流程

以手动翻译英文维基百科为例。
* 用翻译软件将英文词条翻译为中文，并将网页另存为 html 格式。
* 页面内容提取、清理，如[html/安娜·索罗金.html](html/安娜·索罗金.html)。
* 使用[Pandoc](https://github.com/chinapedia/wikipedia.zh/blob/master/Page/Pandoc.md)v3.1 将清理后的 html 文件转换为 markdown，如[wiki/安娜·索罗金.md](wiki/安娜·索罗金.md)。

里面很多步骤可以尝试写脚本自动化。

例如：页面清理过程中，可以用正则表达式将`部分编辑`的文字链接去掉。对应的 HTML 内容如下：
```
<span class="mw-editsection">
<span class="mw-editsection-bracket"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">[</font></font></span><a href="https://en.wikipedia.org/w/index.php?title=Anna_Sorokin&amp;section=9&amp;editintro=Template%3ABLP_editintro&amp;veaction=editsource" title="编辑部分：不可替代的代币"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">编辑</font></font></a><span class="mw-editsection-bracket"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">]</font></font></span>
</span>
```

这个流程看起来繁琐，但是目前可能是利用自动化翻译生产中文内容最有效的方案，因为目前对HTML文档的机器翻译技术相对成熟。

## TODO

* Pandoc 对HTML table转换后忽略了`td`的`colspan`属性

