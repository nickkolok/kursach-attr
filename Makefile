all:
	pdflatex statya_attr.tex
	pdflatex statya_attr.tex
	nohup evince statya_attr.pdf &
diplom: tituln_podpis
	pdflatex diplom.tex
	pdflatex diplom.tex
	mv diplom.pdf diplom.tmp.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=diplom.pdf tituln_podpis.pdf diplom.tmp.pdf
	nohup evince   diplom.pdf &
razdatka:
	pdflatex diplom_razdatka.tex
	pdflatex diplom_razdatka.tex
	nohup evince   diplom_razdatka.pdf &
tituln_podpis:
	convert tituln_podpis.png tituln_podpis.pdf
tor:
	pdflatex attr_primer_tor.tex
	pdflatex attr_primer_tor.tex
	nohup evince   attr_primer_tor.pdf &
