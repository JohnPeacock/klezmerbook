\version "2.18.0"

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
  \CenterMarkOnce
  \KeyAlignMark
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakA = { \break }

% header basics

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 10) { "1" }
    " "
    \override #'(font-size . 12) { "קאזאטשאק" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Kazatshok 1" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Ukranian Dance I"
  "Kammen Vol. 1, No. 22"
}

headMarkup = \markup \center-column {
 \line { "1" " " \larger { "קאַזאַטשאָק" } }
 "Kazatshok 1 (K. 1-22)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
 \line { "1" " " \larger { "קאַזאַטשאָק" } }
 "Kazatshok 1 (K. 1-22)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
 \line { "1" " " \larger { "קאַזאַטשאָק" } }
 "Kazatshok 1 (K. 1-22)"
}

arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
