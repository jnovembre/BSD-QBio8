# A Makefile for generating the PDFs from the R Markdown files.
#

# RULES
# -----
all: handout

handout: advanced_computing.pdf

# Create the handout.
advanced_computing.pdf : advanced_computing.Rmd readable.tex
	Rscript -e 'rmarkdown::render("advanced_computing.Rmd",output_file="advanced_computing.pdf")'

clean:
	rm -f advanced_computing.pdf

