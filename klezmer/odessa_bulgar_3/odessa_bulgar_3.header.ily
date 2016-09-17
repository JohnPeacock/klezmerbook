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

positionSA = {
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
    \override #'(font-size . 10) { "3" }
    " "
    \override #'(font-size . 12) { "אָדעסאַ בולגאַר" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Odessa Bulgar #3" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kammen Vol. 1, No. 12" }

headMarkup = \markup \center-column {
  \line {
    "3" " " \larger { "אָדעסאַ בולגאַר" }
  }
  "Odessa Bulgar #3 (K. 1-12)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line {
    "3" " " \larger { "אָדעסאַ בולגאַר" }
  }
  "Odessa Bulgar #3 (K. 1-12)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line {
    "3" " " \larger { "אָדעסאַ בולגאַר" }
  }
  "Odessa Bulgar #3 (K. 1-12)"
}

arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
