INPUT="html/安娜·索罗金.html"
sed -i "s|https://en.wikipedia.org/wiki/Anna_Sorokin#|#|g" $INPUT
pandoc -f html -t gfm $INPUT > wiki/安娜·索罗金.md
