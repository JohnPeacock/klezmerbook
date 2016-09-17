\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \eighthnote
tempovalue = \markup "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionD = {
  \CenterMarkOnce
  \BarAlignMark
}

breakBtone = { }
breakBttwo = { }
breakBttre = { }
breakB = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Lead sheet from Compleat Klezmer" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "קאַנדעלס האָראַ" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Kandels Hora" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kandel's Hora" }
headMarkup = \markup \center-column {
    \larger { "קאַנדעלס האָראַ" }
    "Kandel's Hora"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "קאַנדעלס האָראַ" }
    "Kandel's Hora"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "קאַנדעלס האָראַ" }
    "Kandel's Hora"
}

composerMarkup = \markup { "Harry Kandel's Orchestra, 1918" }
arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "print-drum-fragments.ily"

bnPad = \barnumberpadextra
