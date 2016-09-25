\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = "Ritmico"
temponote = \quarterdotnote
tempovalue = "70"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

markPL = { \mark \markup { \italic "Piú Lento" } }

positionFN = {
  \LeftMarkOnce
  \BarAlignMark
}

positionPL = {
  \RightMarkOnce
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
  \override #'(font-size . 12) { "A la una yo nací" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "A la una yo nací" }
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "A la una yo nací" }
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "A la una yo nací" }
}

arrangerMarkup = \markup { \italic "arr: R. Tasat" }
composerMarkup = \markup { "Turkey" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
