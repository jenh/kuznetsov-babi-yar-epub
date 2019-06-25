view: epub/by_xx.epub popopen
BY_FILES=\
	front_matter_xx.md\
	author_forward_xx.md\
	01_ashes_xx.md\
	02_soviet-power-is-over_xx.md\
	03_looting-is-damned-interesting_xx.md\
        04_so_were_in_this_new_life_xx.md\
	translators_notes_xx.md\

epub/by_xx.epub: title.txt $(BY_FILES)
	cat title.txt $(BY_FILES) | pandoc  --toc --toc-depth=4 - -o $@

popopen:
	ebook-viewer epub/by_xx.epub


