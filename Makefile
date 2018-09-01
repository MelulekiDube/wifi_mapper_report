COMPILER = pdflatex
UMLC = plantuml
BUILDDIR = build
OUTPUT = wifi_mapper_report.pdf
SRC = wifi_mapper_report.tex

.PHONY: compile clean

compile: $(OUTPUT)

clean:
	rm -rf $(OUTPUT) $(BUILDDIR)

$(OUTPUT): $(SRC) | $(BUILDDIR)
	$(COMPILER) $(TEX_OPT) $<
	$(COMPILER) $(TEX_OPT) $(SRC)
	mv *.aux *.log $(BUILDDIR)

$(BUILDDIR):
	mkdir $(BUILDDIR)
