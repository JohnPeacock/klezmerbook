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

positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakAelv = { \break }
breakAtwl = { \noBreak }
breakA = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אַלע ברידער" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Ale Brider" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "אַלע ברידער" }
  "Ale Brider"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "אַלע ברידער" }
  "Ale Brider"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "אַלע ברידער" }
  "Ale Brider"
}

arrangerMarkup = \markup { \italic "Arr: Unknown" }
composerMarkup = \markup { "Unknown" }
poetMarkup = \markup \column \left-align {
  "Adapted by A Litvin"
  "From \"Akhdes\" by M. Winchevsky"
}

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
