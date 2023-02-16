# zh.chinapedia.org

中国百科的目标是补全互联网上缺失的中文信息。本项目将会尝试将非中文的维基百科以及其它外语内容翻译成中文，这个过程会在GitHub上完成。关于本项目的更多内容请参考[chinapedia.org](https://chinapedia.org/)。

## 工作流程

以手动翻译英文维基百科为例。
* 用翻译软件将英文词条翻译为中文，并将网页另存为 html 格式。
* 页面内容提取、清理。
* 将清理后的 html 文件转换为 markdown。

里面很多步骤可以尝试写脚本自动化。

例如：页面清理过程中，可以用正则表达式将`部分编辑`的文字链接去掉。对应的 HTML 内容如下：
```
<span class="mw-editsection">
<span class="mw-editsection-bracket"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">[</font></font></span><a href="https://en.wikipedia.org/w/index.php?title=Anna_Sorokin&amp;section=9&amp;editintro=Template%3ABLP_editintro&amp;veaction=editsource" title="编辑部分：不可替代的代币"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">编辑</font></font></a><span class="mw-editsection-bracket"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">]</font></font></span>
</span>
```
