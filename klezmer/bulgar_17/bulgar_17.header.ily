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

breakBL = { }
breakCCone = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 10) { "17" }
    " "
    \override #'(font-size . 12) { "בולגאַר" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Bulgar 17" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kammen Vol. 1, No. 17" }

headMarkup = \markup \center-column {
  \line { "17" " " \larger { "בולגאַר" } }
  "Bulgar (K. 1-17)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "17" " " \larger { "בולגאַר" } }
  "Bulgar (K. 1-17)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "17" " " \larger { "בולגאַר" } }
  "Bulgar (K. 1-17)"
}

arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

drumhackfive = \drummode { \repeat tremolo 16 sna32 ~ }
drumhacksix = \drummode { \repeat tremolo 16 sna32 }
drumhackseven = \drummode { \repeat tremolo 4 wbh32 ~ }
drumhackeight = \drummode { \repeat tremolo 4 wbh32 }
