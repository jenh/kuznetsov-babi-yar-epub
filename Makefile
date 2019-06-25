view: epub/by.epub popopen
BY_FILES=\
	front_matter-en.md\
	author_forward-en.md\
	01_ashes-en.md\
	02_soviet-power-is-over-en.md\
	03_looting-is-damned-interesting-en.md\
	translators_notes.md\

epub/by.epub: title.txt $(BY_FILES)
	cat title.txt $(BY_FILES) | pandoc  --toc --toc-depth=2 - -o $@

popopen:
	ebook-viewer epub/by.epub


