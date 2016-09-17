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
    \override #'(font-size . 10) { "2" }
    " "
    \override #'(font-size . 12) { "פֿרײלעכס" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9) { "Freylekhs 2" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kammen Vol. 1, No. 2" }

headMarkup = \markup \center-column {
  \line { "2" " " \larger { "פֿרײלעכס" } }
  "Freylekhs (K. 1-2)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "2" " " \larger { "פֿרײלעכס" } }
  "Freylekhs (K. 1-2)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "2" " " \larger { "פֿרײלעכס" } }
  "Freylekhs (K. 1-2)"
}

composerMarkup = \markup { "" }
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
