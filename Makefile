default: thw_uob.pdf

%.pdf : %.md
	pandoc -t beamer -s $< -o $@

clean:
	rm *.pdf
