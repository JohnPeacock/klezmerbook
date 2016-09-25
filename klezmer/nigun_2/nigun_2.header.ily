\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}
positionB =  {
  \RightMarkOnce
  \KeyAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakA = { \break }
breakBfor = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 10) { "II" }
    " "
      \override #'(font-size . 12) { "ניגון" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Nigun II" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Melody II" }

headMarkup = \markup \center-column {
  \line { "II" " " \larger { "ניגון" } }
  "Nigun II"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "II" " " \larger { "ניגון" } }
  "Nigun II"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "II" " " \larger { "ניגון" } }
  "Nigun II"
}

arrangerMarkup = \markup { "Arr. Dick Schoeller" }
composerMarkup = \markup { "Shlomo Carlebach" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
