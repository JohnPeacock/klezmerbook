\version "2.18.0"

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

positionS = {
  \RightMarkOnce
  \KeyAlignMark
}

positionCH = {
  \RightMarkOnce
  \KeyAlignMark
}

positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "דירה-געלט" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Dire Gelt" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Rent Money" }

headMarkup = \markup \center-column {
  \larger { "דירה-געלט" }
  "Dire Gelt"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "דירה-געלט" }
  "Dire Gelt"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "דירה-געלט" }
  "Dire Gelt"
}

arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }
composerMarkup = \markup { "Traditional" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
