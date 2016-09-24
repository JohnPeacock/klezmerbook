\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "180"

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
  \override #'(font-size . 12) { "All My Love" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "(Dolores Waltz)" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "All My Love" }
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "All My Love" }
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "All My Love" }
}

arrangerMarkup = \markup { \italic "Arr: Unknown" }
composerMarkup = \markup { "Music: Emil Waldteufel" }
poetMarkup = \markup \column \left-align {
  "Lyrics: Al Jolson"
}

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
