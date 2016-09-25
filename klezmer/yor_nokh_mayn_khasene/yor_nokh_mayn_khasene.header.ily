\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Lively" }
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
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC  = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionCC = {
  \RightMarkOnce
  \BarAlignMark
}

breakCton = { }
breakCttw = { }
breakCtfr = { }
breakC = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אַ יאָר נאַך מײַן חתונה" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "A Yor Nokh Mayn Khasene" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "A Year Since my Wedding"
  "Kammen Vol. 1, No. 6"
}

headMarkup = \markup \center-column {
  \roman
  \larger { "אַ יאָר נאַך מײַן חתונה" }
  "A Yor Nokh Mayn Khasene (K. 1-6)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \roman
  \larger { "אַ יאָר נאַך מײַן חתונה" }
  "A Yor Nokh Mayn Khasene (K. 1-6)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \roman
  \larger { "אַ יאָר נאַך מײַן חתונה" }
  "A Yor Nokh Mayn Khasene (K. 1-6)"
}

composerMarkup = \markup { "Isaac Reingold" }
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
