\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \andantetempoprefix
temponote = \quarternote
tempovalue = \andantetempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

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
  \override #'(font-size . 12) { "Avre Este Abajour" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Open Your Jewel Case" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "Avre Este Abajour" }
  "Open Your Jewel Case"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "Avre Este Abajour" }
  "Open Your Jewel Case"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "Avre Este Abajour" }
  "Open Your Jewel Case"
}

arrangerMarkup = \markup { \italic "arr: R. Tasat" }
composerMarkup = \markup { "Turkey" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
