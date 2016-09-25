\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = ""
temponote = \quarternote
tempovalue = "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionS = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionDS = {
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
  \override #'(font-size . 12) { "Hija mía - El Adon" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "Hija mía - El Adon" }
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "Hija mía - El Adon" }
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "Hija mía - El Adon" }
}

arrangerMarkup = \markup { \italic "arr: R. Tasat" }
composerMarkup = \markup { "Turkey" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
