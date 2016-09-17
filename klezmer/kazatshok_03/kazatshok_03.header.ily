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

positionA = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \RightMarkOnce
  \ClefAlignMark
}
positionDCAL = {
  \RightMarkOnce
  \BarAlignMark
}
positionFC = {
  \RightMarkOnce
  \KeyAlignMark
}
positionRT = {
  \RightMarkOnce
  \BarAlignMark
}

breakC = { \break }
breakCC = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 10) { "3" }
    " "
    \override #'(font-size . 12) { "קאזאטשאק" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Kazatshok 3" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Ukranian Dance No. III"
  "Kammen Vol. 1, No. 26"
}

headMarkup = \markup \center-column {
 \line { "3" " " \larger { "קאַזאַטשאָק" } }
 "Kazatshok 3 (K. 1-26)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
 \line { "3" " " \larger { "קאַזאַטשאָק" } }
 "Kazatshok 3 (K. 1-26)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
 \line { "3" " " \larger { "קאַזאַטשאָק" } }
 "Kazatshok 3 (K. 1-26)"
}

arrangerMarkup = \markup { \italic "Arr: Jack Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
