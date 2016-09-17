\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \allegrotempoprefix
temponote = \quarternote
tempovalue = \allegrotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionSA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}
positionCC = {
  \RightMarkOnce
  \BarAlignMark
}

songgroupMarkup = \klezmerSongGroup
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "דער שטילער בולגאַר" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Der Shtiler Bulgar" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Quiet Bulgar"
  "Kammen Vol. 1, No. 15"
}

headMarkup = \markup \center-column {
  \larger { "דער שטילער בולגאַר" }
  "Der Shtiler Bulgar (K. 1-15)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "דער שטילער בולגאַר" }
  "Der Shtiler Bulgar (K. 1-15)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "דער שטילער בולגאַר" }
  "Der Shtiler Bulgar (K. 1-15)"
}

arrangerMarkup = \markup { \italic "Arr. Jack Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
