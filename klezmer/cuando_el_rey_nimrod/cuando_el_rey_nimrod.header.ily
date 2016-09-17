\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \allegrettotempoprefix
temponote = \quarternote
tempovalue = \allegrettotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

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
  \override #'(font-size . 12) { "Cuando el Rey Nimrod" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "When King Nimrod" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "Cuando el Rey Nimrod" }
  "When King Nimrod"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "Cuando el Rey Nimrod" }
  "When King Nimrod"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "Cuando el Rey Nimrod" }
  "When King Nimrod"
}

arrangerMarkup = \markup { \italic "" }
composerMarkup = \markup { "Ladino Folksong" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
