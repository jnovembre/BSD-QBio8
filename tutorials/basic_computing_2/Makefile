# A Makefile for generating the PDFs from the R Markdown files.

# RULES
# -----
all: handout handout_snippets.pdf handout_fujita.pdf

handout: basic_computing_2.pdf

basic_computing_2.pdf : basic_computing_2.Rmd
	Rscript -e 'rmarkdown::render("basic_computing_2.Rmd",output_file="basic_computing_2.pdf")'

handout_snippets.pdf : handout_snippets.Rmd
	Rscript -e 'rmarkdown::render("handout_snippets.Rmd",output_file="handout_snippets.pdf")'

handout_fujita.pdf : handout_fujita.Rmd tornadoes_1974.R
	Rscript -e 'rmarkdown::render("handout_fujita.Rmd",output_file="handout_fujita.pdf")'

clean:
	rm -f basic_computing_2.pdf
	rm -f handout_snippets.pdf
	rm -f handout_fujita.pdf

