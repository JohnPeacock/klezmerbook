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

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "ארצה עלינו" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Artsa Alinu" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "" }
headMarkup = \markup \center-column {
    \larger { "ארצה עלינו" }
    "Artsa Alinu"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "ארצה עלינו" }
    "Artsa Alinu"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "ארצה עלינו" }
    "Artsa Alinu"
}

arrangerMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
