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

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 9)  { "Gut Morgn" }
  \override #'(font-size . 10) { " " }
}
headMarkup = \markup {
  "Gut Morgn"
}
evenTitleHeaderMarkup = \markup {
  "Gut Morgn"
}
oddTitleHeaderMarkup = \markup {
  "Gut Morgn"
}
arrangerMarkup = \markup { "From Budowitz: Mother Tongue" }
composerMarkup = \markup { "Unknown" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}
