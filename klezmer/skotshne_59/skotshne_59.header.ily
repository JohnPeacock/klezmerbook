\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "90"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDC = {
  \RightMarkOnce
  \BarAlignMark
}

breakBfft = { \noBreak }
breakBsvt = { \noBreak }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 10) { "#59" }
    " "
    \override #'(font-size . 12) { "סקאָטשנאַ" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Skotshne #59" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Hop Dance" }
headMarkup = \markup \center-column {
    \line { "#59" " " \larger { "סקאָטשנאַ" } }
    "Skotshne #59"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \line { "#59" " " \larger { "סקאָטשנאַ" } }
    "Skotshne #59"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \line { "#59" " " \larger { "סקאָטשנאַ" } }
    "Skotshne #59"
}

arrangerMarkup = \markup { \italic "Frank London, Klezfest 2002" }
composerMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
