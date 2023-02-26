paper.pdf : paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

.PHONY: clean

clean:
	rm *.tex *.png *.aux *.dat
	# git ls-files  -o | xargs rm -f
	
