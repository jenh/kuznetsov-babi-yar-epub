view: epub/by.epub popopen
BY_FILES=\
	front_matter.md\
	author_forward.md\
	01_ashes.md\
	02_soviet-power-is-over.md\
	translators_notes.md\

epub/by.epub: title.txt $(BY_FILES)
	cat title.txt $(BY_FILES) | pandoc  --toc --toc-depth=2 - -o $@

popopen:
	ebook-viewer epub/by.epub


