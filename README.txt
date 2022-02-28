This was the most important and affecting book that I've ever read, and 
Kuznetsov's warnings to us are vital and timeless. That such an important
work is not in print in English, and wasn't available digitally ([it is
now, thanks to archive.org!](https://archive.org/details/babiyardocumenti0000anat),
but there's still no epub).

This is an in-progress open source translation using automated translation with
human assistance. Files compile to Russian and English epubs and PDFs. Because
my build system is brittle and needy, you can find output of in-progress work in
[epub](epub/) and [pdf](pdf/). 

Everything is still pretty raw and most of the machine translation has only been
touched up to chapter 6. I didn't intend to release this until it was in a better
shape, but I figure it's now or never: putting this out there might be helpful
or garner assistance. :) Anyway, if I'm spending the $$ for automated translation,
mght as well share my output to save others!

src/ contains not-yet-cleaned-up source. Some of it is translated, some of it not.

You can build a PDF or epub on Linux (or using the docker image @ jenh/eoat:v2).

**To build the epub and PDF**

1. Install eoat-tools (note that you'll need most of the dependencies described
in the [EOAT README](https://github.com/jenh/epub-ocr-and-translate):

  `sh epub-ocr-and-translate/eoat-install.sh`

   Alternatively, you can use a pre-build docker image with all tools installed:

   `docker pull jenh/eoat:v2`

2. Run `eoat-build $lang` where the language is `en` or `ru`.

## Issues

There are plenty...

## Important credits

OCR created by Nina & Leon Dotan   03.2002; 03.2005
http://ldn-knigi.lib.ru  (ldn-knigi.narod.ru    ldnleon@yandex.ru)

