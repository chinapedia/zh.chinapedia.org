INPUT="html/安娜·索罗金.html"
#https://stackoverflow.com/questions/16745988/sed-command-with-i-option-in-place-editing-works-fine-on-ubuntu-but-not-mac
sed -i '' "s|https://en.wikipedia.org/wiki/Anna_Sorokin#|#|g" $INPUT
sed -i '' "s|https://en.wikipedia.org/wiki/|https://en.wiki.chinapedia.org/wiki/|g" $INPUT
sed -i '' "s|<span class=\"mw-editsection\"><span class=\"mw-editsection-bracket\">.*</span></span>|\n|g" $INPUT
sed -Ei '' "s|<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">([^<]*)</font></font>|\1|g" $INPUT
sed -i '' "s|<font style=\"vertical-align: inherit;\">||g" $INPUT
sed -i '' "s|</font>||g" $INPUT
sed -i '' "s|<i>||g" $INPUT
sed -i '' "s|</i>||g" $INPUT
pandoc -f html -t gfm $INPUT > wiki/安娜·索罗金.md
