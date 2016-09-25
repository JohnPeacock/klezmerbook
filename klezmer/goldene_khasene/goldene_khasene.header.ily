\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "130"

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
positionAI = {
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

breakAIone = { }
breakAItwo = { }
breakAItre = { }
breakAIfor = { }
breakAIfiv = { }
breakAIsix = { }
breakAIsev = { }
breakAIeit = { }
breakAInin = { }
breakAIten = { }
breakAIelv = { }
breakAItwl = { }
breakAItht = { }
breakAIfrt = { }
breakAIfft = { }
breakAI = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "די גאָלדענע חתונה" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Di Goldene Khasene" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "The Golden Wedding" }
headMarkup = \markup \center-column {
    \larger { "די גאָלדענע חתונה" }
    "Die Goldene Khasene"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "די גאָלדענע חתונה" }
    "Die Goldene Khasene"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "די גאָלדענע חתונה" }
    "Die Goldene Khasene"
}

arrangerMarkup = \markup { \italic "Arr: John Chambers" }
composerMarkup = \markup { "Abe Ellstein Orchestra, 1945" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
