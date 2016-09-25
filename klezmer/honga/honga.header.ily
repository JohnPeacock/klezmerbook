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
  \BarAlignMark
  \CenterMarkOnce
}
positionB  = {
  \BarAlignMark
  \CenterMarkOnce
}
positionC  = {
  \BarAlignMark
  \CenterMarkOnce
}
positionD  = {
  \BarAlignMark
  \CenterMarkOnce
}
positionE  = {
  \BarAlignMark
  \CenterMarkOnce
}
positionTC = {
  \BarAlignMark
  \LeftMarkOnce
}
positionDS = {
  \BarAlignMark
  \LeftMarkOnce
}
positionCC = {
  \BarAlignMark
  \RightMarkOnce
}

breakBL = { }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "האָנגאַ" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9) { "Honga" }
  \override #'(font-size . 10) { " " }
}
headMarkup = \markup {
  \larger { "האָנגאַ" }
  "Honga"
}
evenTitleHeaderMarkup = \markup {
  \larger { "האָנגאַ" }
  "Honga"
}
oddTitleHeaderMarkup = \markup {
  \larger { "האָנגאַ" }
  "Honga"
}
subtitleMarkup = \markup { "www.musicstudents.com" }
subsubtitleMarkup = \markup { "" }
composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }
poetMarkup = \markup { "" }
opusMarkup = \markup { "" }
pieceMarkup = \markup { "" }
instrumentMarkup = \markup { "" }
meterMarkup = \markup { "" }
songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
