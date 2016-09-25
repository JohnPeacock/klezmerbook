\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \moderatotempoprefix
temponote = \quarternote
tempovalue = \moderatotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionB = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionDC = {
  \BarAlignMark
  \LeftMarkOnce
}

breakAone = { \noBreak }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 10) { "21" }
    " "
      \override #'(font-size . 12) { "קאָלעמײקע" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Kolemeyke 21" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Kolomeike (Ukranian Dance)"
  "Kammen Vol. 1, No. 21"
}

headMarkup = \markup \center-column {
\line { "21" " " \larger { "קאָלעמײקע" } }
  "Kolemeyke (K. 1-21)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
\line { "21" " " \larger { "קאָלעמײקע" } }
"Kolemeyke (K. 1-21)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
\line { "21" " " \larger { "קאָלעמײקע" } }
"Kolemeyke (K. 1-21)"
}

arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
