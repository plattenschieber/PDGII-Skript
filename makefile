texfiles=Vorlesung*.tex index.tex skriptheader.tex
output=PDGII
otherfiles=makefile

Wissrech1.pdf: $(texfiles)
	pdflatex  -shell-escape -jobname=$(output) index.tex
	pdflatex  -shell-escape -jobname=$(output) index.tex

archiv: PDGII.pdf $(texfiles) $(otherfiles) 
	zip $(output).zip $^

cleanup:
	rm *~
	rm $(output)*
	rm FunktionalAnalysis.zip
