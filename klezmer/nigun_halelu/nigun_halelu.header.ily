\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "105"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionB =  {
  \CenterMarkOnce
  \KeyAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakA = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 12) { "ניגון הללו" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Nigun Halelu" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Halelu Melody" }

headMarkup = \markup \center-column {
  \larger { "ניגון הללו" }
  "Nigun Halelu"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "ניגון הללו" }
  "Nigun Halelu"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "ניגון הללו" }
  "Nigun Halelu"
}

arrangerMarkup = \markup { "Arr. Dick Schoeller" }
composerMarkup = \markup { "Yehudah Katz" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
