all:
	pdflatex statya_attr.tex
	pdflatex statya_attr.tex
	evince   statya_attr.pdf
diplom:
	pdflatex diplom.tex
	pdflatex diplom.tex
	mv diplom.pdf diplom.tmp.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=diplom.pdf tituln_diplom.pdf diplom.tmp.pdf
	evince   diplom.pdf
razdatka:
	pdflatex diplom_razdatka.tex
	pdflatex diplom_razdatka.tex
	evince   diplom_razdatka.pdf
