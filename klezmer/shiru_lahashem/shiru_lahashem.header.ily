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
positionB  = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC  = {
  \CenterMarkOnce
  \KeyAlignMark
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
  \override #'(font-size . 12) { "שירו לה׳" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Shiru laHashem" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Sing to the Lord"
}

headMarkup = \markup \center-column {
  \larger { "שירו לה׳" }
  "Shiru laHashem"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "שירו לה׳" }
  "Shiru laHashem"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "שירו לה׳" }
  "Shiru laHashem"
}

arrangerMarkup = \markup { "Arr. Dick Schoeller" }
composerMarkup = \markup { "Shlomo Carlebach" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
