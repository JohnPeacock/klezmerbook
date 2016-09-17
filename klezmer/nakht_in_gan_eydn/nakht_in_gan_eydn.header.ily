\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "115"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionSA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC  = {
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

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Arrangement from Klezmer Band Folio" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אַ נאַכט אין גן-עדן" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "A Nakht in Gan Eydn" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "A Night in the Garden of Eden" }

headMarkup = \markup \center-column {
  { \larger { "אַ נאַכט אין גן-עדן" } }
  "A Nakht in Gan Eydn"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  { \larger { "אַ נאַכט אין גן-עדן" } }
  "A Nakht in Gan Eydn"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  { \larger { "אַ נאַכט אין גן-עדן" } }
  "A Nakht in Gan Eydn"
}

composerMarkup = \markup { "Harry Kandel's Orchestra, 1926" }
arrangerMarkup = \markup { \italic "Arr. Yale Klezmer Band" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
