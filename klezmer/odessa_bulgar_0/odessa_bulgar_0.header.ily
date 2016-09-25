\version "2.18.2"

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

positionSA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB =  {
  \CenterMarkOnce
  \BarAlignMark
}
positionC =  {
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

bassBreak = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אָדעסאַ בולגאַר" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Odessa Bulgar" }
  \override #'(font-size . 10) { " " }
}
headMarkup = \markup \center-column {
  \larger { "אָדעסאַ בולגאַר" }
  "Odessa Bulgar"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "אָדעסאַ בולגאַר" }
  "Odessa Bulgar"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "אָדעסאַ בולגאַר" }
  "Odessa Bulgar"
}

composerMarkup = \markup { "Abe Schwartz" }
arrangerMarkup = \markup { \italic "Arr. Bokov/Koffman" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
