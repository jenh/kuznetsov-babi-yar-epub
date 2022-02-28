
# What is this?

This is an in-progress open source translation of Anatoly Kuznetsov's "Babi Yar"
using automated translation with human assistance. The source files can be compiled
to both Russian and English [epub](epub/) and [pdf](pdf/) digital files and you can
even build them yourself. 

Everything from "To the question of Heaven and Earth" and onwards is machine-translated
and not yet edited. It's open game for anyone interested. For the sections
preceding, I used a combination of Google, Amazon, Deepl, and Yandex translation. For 
everything after 05.txt in the `/src/` directory, I used Google translate (gcloud).

I didn't intend to release this until it was in a better shape, but I figure it's 
now or never: putting this out in the open might be helpful to someone and anyone can
contribute, and the epubs and PDF can be read and shared as-is, as long as no one
minds that the last 3/4 of the book need human attention.

# Why is this?

This was the most important and affecting book that I've ever read, and
Kuznetsov's warnings to us are vital and timeless. That such an important
work is not in print in English, and wasn't available digitally seemed criminal.
([The English trnaslation is now easily accessible, thanks to archive.org!](https://archive.org/details/babiyardocumenti0000anat),
but there's still no epub).

-------
Please be aware that the content included here is very disturbing and can be
overwhelming. But it is what happened and it's important that it's accessible.

If you do nothing else, read all of the "From the Author" chapters. 

------

# Building the PDF and epub

You can build your own PDF or epub on Linux (or using the docker image @ jenh/eoat:v2).

**To build the epub and PDF**

1. Install eoat-tools dependencies described in the  
   [EOAT README](https://github.com/jenh/epub-ocr-and-translate)


   Alternatively, you can use a pre-build docker image with most required tools installed:

   `docker pull jenh/eoat:v2`

2. Run `scripts/eoat-build $lang` where the language is `en` or `ru`.

## Issues

* Only 10% of the English content has been reviewed and cleaned up by a human so far.
* None of the Russian version has been formatted or checked.
* The LaTeX and CSS files could be made much nicer.
* Because I'm using a hokey way to select matching language strings from source files,
  we may be missing text or have extra text. Started looking at lingua-language-detect
  as a better alternative, but it will take a little time.
* Many more identified and unidentified!

## Important credits

Because I did a lot of this work before I finished EOAT, I used the OCR text created by Nina &
Leon Dotan 03.2002; 03.2005 http://ldn-knigi.lib.ru  (ldn-knigi.narod.ru    ldnleon@yandex.ru).
We are all very indebted to them for doing this!

Note that there was a section missing, but I was later able to locate a PDF able to obtain it from
a PDF of the Russian version and OCR it.  
