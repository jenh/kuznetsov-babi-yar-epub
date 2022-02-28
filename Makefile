view: book_xx.epub popopen
FILES=\
	chapters/02authorforward_xx.md\
	chapters/03ashes_xx.md\
	chapters/04sovietpowerisover_xx.md\
	chapters/05lootingisdamnedinterestng_xx.md\
	chapters/06sowereinthisnewlife_xx.md\
	chapters/07fromtheauthor_xx.md\
	chapters/08onthequestionofheavenonearth_xx.md\
	chapters/09Kreshchatyk_xx.md\
	chapters/10order_xx.md\
	chapters/11BabiYar_xx.md\
	chapters/12chapterofmemory_xx.md\
	chapters/13germantime_xx.md\
	chapters/14booksburned_xx.md\
	chapters/15hunger_xx.md\
	chapters/16igointobusiness_xx.md\
	chapters/17bolikreturns_xx.md\
	chapters/18Kharkivtaken_xx.md\
	chapters/19Darnitsa_xx.md\
	chapters/20beautifulspaciousblessedland_xx.md\
	chapters/21Kiev-Pechersk-Lavra_xx.md\
	chapters/22night_xx.md\
	chapters/23partiiamanlivestoeat_xx.md\
	chapters/24publicenemies_xx.md\
	chapters/25woundedonthestairs_xx.md\
	chapters/26businessgetsdangerous_xx.md\
	chapters/27death_xx.md\
	chapters/28hitlersbirthday_xx.md\
	chapters/29togermany_xx.md\
	chapters/30ANOTEFROMTHEAUTHOR_xx.md\
	chapters/31thereisnoblessedland_xx.md\
	chapters/32excessivelyintelligentpeopleareenemies_xx.md\
	chapters/33potatoflowers_xx.md\
	chapters/34Dynamo_xx.md\
	chapters/35fromtheauthor_xx.md\
	chapters/36BabiYartheSystem_xx.md\
	chapters/37Grandfathertheantifascist_xx.md\
	chapters/38fragmentsoftheempire_xx.md\
	chapters/39killafish_xx.md\
	chapters/40chapteroforiginaldocuments_xx.md\
	chapters/41amongtheraids_xx.md\
	chapters/42horsetosausage_xx.md\
	chapters/43cannibals_xx.md\
	chapters/44veryluckyinlifedontknowwhotothank_xx.md\
	chapters/45partiii_xx.md\
	chapters/46earthafire_xx.md\
	chapters/47BabiYarFinale_xx.md\
	chapters/48anotefromtheauthor_xx.md\
	chapters/49therewillbenomorekyiv_xx.md\
	chapters/50waroftheworlds_xx.md\
	chapters/51professionarsonists_xx.md\
	chapters/52howmanytimesshouldihavebeenshot_xx.md\
	chapters/53fivedaysandnightsofagony_xx.md\
	chapters/54chapterfromthefuture_xx.md\
	chapters/55commediaefinita_xx.md\
	chapters/56finalchapter_xx.md\

pdf/book_xx.pdf: $(FILES)
	cat $(FILES) | pandoc --metadata-file=variables.yaml --top-level-division=chapter -f gfm+smart --pdf-engine=xelatex --template=templates/paperback.tex -o book_xx.tex && cat $(FILES) | pandoc --metadata-file=templates/variables.yaml --top-level-division=chapter -f gfm+smart --pdf-engine=xelatex --template=templates/paperback.tex -o pdf/book_xx.pdf

epub/book_xx.epub: $(FILES)
	cat $(FILES) | pandoc --metadata-file=variables.yaml --top-level-division=chapter -f gfm+smart --toc --toc-depth=4 --css=templates/epub.css - -o epub/book_xx.epub
popopen: 
	ebook-viewer book_xx.epub
