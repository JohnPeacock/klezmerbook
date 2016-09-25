\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Lively," }
temponote = \quarternote
tempovalue = \markup "120-140"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \RightMarkOnce
  \KeyAlignMark
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
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionCCRT = {
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
  \line {
    \override #'(font-size . 10) { "4" }
    " "
    \override #'(font-size . 12) { "פֿרײלעכס" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9) { "Freylekhs 4" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kammen Vol. 1, No. 4" }

headMarkup = \markup \center-column {
  \line { "4" " " \larger { "פֿרײלעכס" } }
  "Freylekhs (K. 1-4)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "4" " " \larger { "פֿרײלעכס" } }
  "Freylekhs (K. 1-4)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "4" " " \larger { "פֿרײלעכס" } }
  "Freylekhs (K. 1-4)"
}

composerMarkup = \markup { "" }
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
