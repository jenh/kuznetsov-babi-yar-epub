view: epub/by_xx.epub popopen
BY_FILES=\
	output/front_matter_xx.md\
	output/author_forward_xx.md\
	output/01_ashes_xx.md\
	output/02_soviet-power-is-over_xx.md\
	output/03_looting-is-damned-interesting_xx.md\
        output/04_so_were_in_this_new_life_xx.md\
	output/translators_notes_xx.md\

epub/by_xx.epub: title.txt $(BY_FILES)
	cat title.txt $(BY_FILES) | pandoc  --toc --toc-depth=4 - -o $@

popopen:
	ebook-viewer epub/by_xx.epub


