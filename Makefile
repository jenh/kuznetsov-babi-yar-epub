
BY_FILES=\
	translators_notes.md\
	author_forward.md\
	01_ashes.md\

epub/by.epub: title.txt $(BY_FILES)
	cat title.txt $(BY_FILES) | pandoc  --toc --toc-depth=2 - -o $@


