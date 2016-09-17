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

positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakOne = { \break }
breakTwo = { \break }
breakThree = { \break }
breakFour = { \break }
breakFive = { \break }
breakSix = { \break }
breakSeven = { \break }
breakEight = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "Joshua" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  "Joshua"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  "Joshua"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  "Joshua"
}

arrangerMarkup = \markup { \italic "Arr: Fred Harrison" }
composerMarkup = \markup { "Unknown" }
poetMarkup = \markup { "Unknown" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
