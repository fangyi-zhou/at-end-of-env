dist: atendofenv.sty atendofenv.pdf
	mkdir -p atendofenv
	cp atendofenv.pdf atendofenv.ins atendofenv.dtx README.md LICENSE atendofenv
	zip -r atendofenv.zip atendofenv

.PHONY: dist

atendofenv.sty: atendofenv.dtx atendofenv.ins
	latex atendofenv.ins

atendofenv.pdf: atendofenv.sty atendofenv.dtx
	latexmk -pdf atendofenv.dtx

