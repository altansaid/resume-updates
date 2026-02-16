# Makefile for LaTeX resume compilation

# Main resume file (without .tex extension)
MAIN = base_resume

# Output PDF name
OUTPUT = resume.pdf

# LaTeX compiler
LATEX = pdflatex

# LaTeX compiler flags
LATEXFLAGS = -interaction=nonstopmode -halt-on-error

.PHONY: all clean help

# Default target
all: $(OUTPUT)

# Compile the main resume
$(OUTPUT): $(MAIN).tex
	@echo "Compiling resume..."
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	@mv $(MAIN).pdf $(OUTPUT)
	@echo "Resume compiled successfully: $(OUTPUT)"

# Clean auxiliary files
clean:
	@echo "Cleaning auxiliary files..."
	@rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz
	@echo "Clean complete."

# Clean everything including PDFs
cleanall: clean
	@echo "Removing PDF outputs..."
	@rm -f $(OUTPUT) *.pdf
	@echo "All clean."

# Show help
help:
	@echo "Available targets:"
	@echo "  make          - Compile the resume (default)"
	@echo "  make clean    - Remove auxiliary files"
	@echo "  make cleanall - Remove all generated files including PDFs"
	@echo "  make help     - Show this help message"
