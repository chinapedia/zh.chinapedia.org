INPUT="html/安娜·索罗金.html"
#https://stackoverflow.com/questions/16745988/sed-command-with-i-option-in-place-editing-works-fine-on-ubuntu-but-not-mac
sed -i '' "s|https://en.wikipedia.org/wiki/Anna_Sorokin#|#|g" $INPUT
sed -i '' "s|https://en.wikipedia.org/wiki/|https://en.wiki.chinapedia.org/wiki/|g" $INPUT
pandoc -f html -t gfm $INPUT > wiki/安娜·索罗金.md
