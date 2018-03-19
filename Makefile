default: thw_uob.pdf

reveal: thw_uob.html

%.pdf : %.md
	pandoc -t beamer -s $< -o $@

%.html : %.md
	pandoc -t revealjs -s -o $@ $< -V revealjs-url=./reveal.js

clean:
	rm *.pdf *.html
