\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = "Allegretto giocoso"
temponote = \quarternote
tempovalue = "110"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionFN = {
  \LeftMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "La Vida Do Por el Rakí" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "I'd Give My Life for Raki" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "La vida do por el rakí" }
  "I'd Give My Life for Raki"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "La vida do por el rakí" }
  "I'd Give My Life for Raki"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "La vida do por el rakí" }
  "I'd Give My Life for Raki"
}

arrangerMarkup = \markup { \italic "arr: R. Tasat" }
composerMarkup = \markup { "Traditional Ladino Song" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
