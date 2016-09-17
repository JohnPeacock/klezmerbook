\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionSA = {
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
positionTC = {
  \LeftMarkOnce
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

breakC = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "2 די גאָלדענע חתונה" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Di Goldene Khasene 2" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "The Golden Wedding 2" }
headMarkup = \markup \center-column {
    \larger { "2 די גאָלדענע חתונה" }
    "Die Goldene Khasene 2"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "2 די גאָלדענע חתונה" }
    "Die Goldene Khasene 2"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "2 די גאָלדענע חתונה" }
    "Die Goldene Khasene 2"
}

arrangerMarkup = \markup { \italic "Di Bostoner Klezmer (after H. Kandel)" }
composerMarkup = \markup { "Unknown" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
