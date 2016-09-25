\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = "Spanish Tango"
temponote = \quarternote
tempovalue = "70"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionFN = {
  \LeftMarkOnce
  \BarAlignMark
}

positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakA = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "En el Café del Amanecer" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "In the Sunrise Cafe" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "En el Café del Amanecer" }
  "In the Sunrise Cafe"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "En el Café del Amanecer" }
  "In the Sunrise Cafe"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "En el Café del Amanecer" }
  "In the Sunrise Cafe"
}

arrangerMarkup = \markup { \italic "arr: R. Tasat" }
composerMarkup = \markup { "Turkey" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
