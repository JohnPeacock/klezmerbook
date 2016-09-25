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

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}
positionTC = {
  \LeftMarkOnce
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
positionD = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDCAC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionCCRT = {
  \RightMarkOnce
  \BarAlignMark
}

breakD = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אָדעסער בולגאַר" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Odesser Bulgar" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Bulgar from Odessa"
  "Kammen Vol. 1, No. 18"
}

headMarkup = \markup \center-column {
  \larger "אָדעסער בולגאַר"
  "Odesser Bulgar (K. 1-18)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger "אָדעסער בולגאַר"
  "Odesser Bulgar (K. 1-18)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger "אָדעסער בולגאַר"
  "Odesser Bulgar (K. 1-18)"
}

arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
