# klezmerbook

[LilyPond](http://lilypond.org/) sources for the songbook of Shpilkes Klezmer

## Required Software
* [LilyPond](http://lilypond.org/)
* [gnu make](http://www.gnu.org/software/make)
* [PDFtk](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)
  * [Add pdftk newer Fedora](https://ask.fedoraproject.org/en/question/73364/pdftk-substitute-for-fedora-21-and-22/)
* [ImageMagick](http://www.imagemagick.org/)
* [ComixNo2](http://culmus.sourceforge.net/fancy/index.html) font

## Plans

### Eliminate PDFtk requirement

There are newer tools out there that do each of the parts of PDFtk that
we use. Those are available by default on more platforms. Investigate and
move forward.

### Switch to jazz fonts

There are jazz style fonts available for [LilyPond](http://lilypond.org/)
now. I would like to investigate going to a jazz style presentation using
one of these. This might also entail changing fonts for the Hebrew and
Yiddish text in these scores.

* [LilyJAZZ](http://lilypondblog.org/2013/09/lilypond-and-lilyjazz/)
* [Mimicking the Real Book Look](http://leighverlag.blogspot.ca/2015/12/mimicking-real-book-look.html)
* [LilyPond's Look & Feel](http://lilypondblog.org/2014/09/lilyponds-look-and-feel/)
* [Culmus Fancy Hebrew Fonts](http://culmus.sourceforge.net/fancy/index.html) - Ktav Yad being the most likely choice

### Eliminate warnings

Goes without saying...
