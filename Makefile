# Name of your main tex file (without extension)
MAIN = main

# Default target: compile to PDF
all: pdf

# Compile using latexmk (auto handles multiple passes)
pdf:
	latexmk -pdf $(MAIN).tex

# Clean auxiliary files
clean:
	latexmk -c

# Force full rebuild (deletes aux files then rebuilds)
rebuild: clean pdf

# Watch mode: auto-recompile when file changes
watch:
	latexmk -pdf -pvc $(MAIN).tex

# Delete *all* generated files (including the PDF)
cleanall:
	latexmk -C
