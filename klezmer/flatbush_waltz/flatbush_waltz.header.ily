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
  \KeyAlignMark
  \RightMarkOnce
}
positionB  = {
  \BarAlignMark
  \CenterMarkOnce
}
positionDC = {
  \BarAlignMark
  \LeftMarkOnce
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 9)  { "Flatbush Waltz" }
  \override #'(font-size . 10) { " " }
}
headMarkup = \markup {
  "Flatbush Waltz"
}
evenTitleHeaderMarkup = \markup {
  "Flatbush Waltz"
}
oddTitleHeaderMarkup = \markup {
  "Flatbush Waltz"
}
arrangerMarkup = \markup { "" }
composerMarkup = \markup { "Andy Statman" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
