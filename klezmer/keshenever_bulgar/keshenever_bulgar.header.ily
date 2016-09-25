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
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionB = {
  \CenterMarkOnce
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

breakB = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "קעשענעװער בולגאַר" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Keshenever Bulgar" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Bulgar from Kishiniev"
  "Kammen Vol. 1, No. 19"
}

headMarkup = \markup \center-column {
  \larger { "קעשענעװער בולגאַר" }
  "Keshenever Bulgar (K. 1-19)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "קעשענעװער בולגאַר" }
  "Keshenever Bulgar (K. 1-19)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "קעשענעװער בולגאַר" }
  "Keshenever Bulgar (K. 1-19)"
}

composerMarkup = \markup \column \right-align {
  "Abe Schwartz, 1917"
  "Abe Katzman's Bessarabian Orchestra, 1927"
  " "
}
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
