\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = ""
temponote = \quarternote
tempovalue = "90"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionDS = {
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
  \override #'(font-size . 12) { "Una Tarde de Verano" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "in dm" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "Una Tarde de Verano in dm" }
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "Una Tarde de Verano in dm" }
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "Una Tarde de Verano in dm" }
}

arrangerMarkup = \markup { \italic "arr. R. Tasat" }
composerMarkup = \markup { "Tangier, Morocco" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
