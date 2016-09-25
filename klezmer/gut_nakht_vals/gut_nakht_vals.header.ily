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
  \override #'(font-size . 9)  { "Gut Nakht Vals" }
  \override #'(font-size . 10) { " " }
}
headMarkup = \markup {
  "Gut Nakht Vals"
}
evenTitleHeaderMarkup = \markup {
  "Gut Nakht Vals"
}
oddTitleHeaderMarkup = \markup {
  "Gut Nakht Vals"
}
arrangerMarkup = \markup { "From Budowitz: Wedding Without a Bride" }
composerMarkup = \markup { "Unknown" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

breakA = { \break }
breakB = { \break }

positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}
