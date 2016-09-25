\version "2.18.2"

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
positionCT = {
  \RightMarkOnce
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
positionCC = {
  \RightMarkOnce
  \BarAlignMark
}

breakBL = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Arrangement from Klezmer Band Folio" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "באָלטער בולגאַר" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Bolter Bulgar" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Bulgar from Balta" }
headMarkup = \markup \center-column {
    \larger { "באָלטער בולגאַר" }
    "Bolter Bulgar"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "באָלטער בולגאַר" }
    "Bolter Bulgar"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "באָלטער בולגאַר" }
    "Bolter Bulgar"
}

composerMarkup = \markup { "Harry Kandel's Orchestra, 1923" }
arrangerMarkup = \markup { \italic "Arr. Yale Klezmer Band" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
