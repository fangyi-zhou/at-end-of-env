dist:
	mkdir -p atendofenv
	latex atendofenv.ins
	latexmk -pdf atendofenv.dtx
	cp atendofenv.pdf atendofenv.ins atendofenv.dtx README.md LICENSE atendofenv
	zip -r atendofenv.zip atendofenv
