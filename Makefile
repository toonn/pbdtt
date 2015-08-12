all: pdf

pdf: masterproef.tex referenties.bib
	mkdir -p _build
	pdflatex -shell-escape -output-directory=_build masterproef
	cd _build; BIBINPUTS=".." TEXMFOUTPUT="_build" bibtex masterproef; cd ..
	pdflatex -shell-escape -output-directory=_build masterproef
	pdflatex -shell-escape -output-directory=_build masterproef
	mv _build/masterproef.pdf .

clean:
	rm -r _build _minted-*
