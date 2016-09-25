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
    \override #'(font-size . 10) { "5" }
    " "
    \override #'(font-size . 12) { "פֿרײלעכס" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9) { "Freylekhs 5" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kammen Vol. 1, No. 5" }

headMarkup = \markup \center-column {
  \line { "5" " " \larger { "פֿרײלעכס" } }
  "Freylekhs (K. 1-5)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "5" " " \larger { "פֿרײלעכס" } }
  "Freylekhs (K. 1-5)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "5" " " \larger { "פֿרײלעכס" } }
  "Freylekhs (K. 1-5)"
}

composerMarkup = \markup { "" }
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
