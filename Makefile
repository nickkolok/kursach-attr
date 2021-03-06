DATE=`date +%Y-%m-%d---%H-%M-%S`

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
krug1:
	pdflatex attr_primer_krug1.tex
	pdflatex attr_primer_krug1.tex
	nohup evince   attr_primer_krug1.pdf &
mz:
	iconv -f UTF8 -t CP1251 sobstvenno_text.tex > mz/sobstvenno_text.cp1251.tex
	cd mz ; latex     Zvyagin_Avdeev.tex
	cd mz ; latex     Zvyagin_Avdeev.tex
	cd mz ; dvipdf    Zvyagin_Avdeev.dvi
	cd mz ; nohup evince Zvyagin_Avdeev.pdf &
	cd mz ; zip ../../Zvyagin-Avdeev-statya-attr-mz-$(DATE).zip Zvyagin_Avdeev.pdf Zvyagin_Avdeev.tex *.sty *.eps glyphtounicode.tex *.cp1251.tex
#	zip    ../Zvyagin-Avdeev-statya-attr-mz-$(DATE).zip mz/{Zvyagin_Avdeev.{pdf,tex},*.sty,*.eps,glyphtounicode.tex,*.cp1251.tex}
