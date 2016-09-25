\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Not too fast," }
temponote = \quarternote
tempovalue = \markup "100"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \KeyAlignMark
  \RightMarkOnce
}
positionB  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionDC = {
  \BarAlignMark
  \LeftMarkOnce
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "איציקל" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Itsikel" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Little Isaac"
  "Kammen Vol. 1, No. 10"
}

headMarkup = \markup \center-column {
  \larger { "איציקל" }
  "Itsikel (K. 1-10)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "איציקל" }
  "Itsikel (K. 1-10)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "איציקל" }
  "Itsikel (K. 1-10)"
}

arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
