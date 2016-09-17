\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "100"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \ClefAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "די מאַמע איז געגאַנגען" }
  \override #'(font-size . 12) { "אין מאַרק" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Di Mame iz Gegangen in Mark" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \line { \larger { "די מאַמע איז געגאַנגען אין מאַרק" } }
  "Di Mame iz Gegangen in Mark"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { \larger { "די מאַמע איז געגאַנגען אין מאַרק" } }
  "Di Mame iz Gegangen in Mark"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { \larger { "די מאַמע איז געגאַנגען אין מאַרק" } }
  "Di Mame iz Gegangen in Mark"
}

arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }
composerMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
