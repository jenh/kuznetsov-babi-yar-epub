view: book_xx.epub popopen
FILES=\
	01frontmatter_xx.md\
	02authorforward_xx.md\
	03ashes_xx.md\
	04sovietpowerisover_xx.md\
	05lootingisdamnedinterestng_xx.md\
	06sowereinthisnewlife_xx.md\
	07fromtheauthor_xx.md\
	100translatorsnotes_xx.md\

pdf/book_xx.pdf: $(FILES)
	cat $(FILES) | pandoc --metadata-file=variables.yaml --top-level-division=chapter -f gfm+smart --pdf-engine=xelatex --template=paperback.tex -o book_xx.tex && cat $(FILES) | pandoc --metadata-file=variables.yaml --top-level-division=chapter -f gfm+smart --pdf-engine=xelatex --template=paperback.tex -o book_xx.pdf

epub/book_xx.epub: $(FILES)
	cat $(FILES) | pandoc --metadata-file=variables.yaml --top-level-division=chapter -f gfm+smart --toc --toc-depth=4 --css=epub.css - -o book_xx.epub
popopen: 
	ebook-viewer book_xx.epub
