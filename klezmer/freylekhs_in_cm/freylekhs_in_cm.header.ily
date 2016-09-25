\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "160"

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
positionFN = {
  \LeftMarkOnce
  \BarAlignMark
}
positionDS = {
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
    \override #'(font-size . 10) { "C minor" }
    " "
    \override #'(font-size . 12) { "פֿרײלעכס" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Freylekhs in C minor" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \line { "Cm" " " \larger { "פֿרײלעכס" } }
  "Freylekhs in C minor"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "Cm" " " \larger { "פֿרײלעכס" } }
  "Freylekhs in C minor"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "Cm" " " \larger { "פֿרײלעכס" } }
  "Freylekhs in C minor"
}

arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }
composerMarkup = \markup { "Dave Tarras" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
