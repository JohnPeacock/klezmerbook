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
  \RightMarkOnce
  \KeyAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionD  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionE  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionF  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 10) { "5" }
    " "
      \override #'(font-size . 12) { "רוסישע שער" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Russishe Sher #5" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Russian Sher #5" }

headMarkup = \markup \center-column {
  \line { "5" " " \larger { "רוסישע שער" } }
  "Russishe Sher #5"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "5" " " \larger { "רוסישע שער" } }
  "Russishe Sher #5"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "5" " " \larger { "רוסישע שער" } }
  "Russishe Sher #5"
}

arrangerMarkup = \markup { "" }
composerMarkup = \markup { "Harry Kandel, 1917" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
