\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = "Vivace"
temponote = \quarternote
tempovalue = "130"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionDC = {
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
  \override #'(font-size . 12) { "יודוך רעיוני" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 12) { "Yodukha Rayonai" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "My Thoughts Will Praise You" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "יודוך רעיוני" }
  "Yodukha Rayonai"
  "My Thoughts Will Praise You"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "יודוך רעיוני" }
  "Yodukha Rayonai"
  "My Thoughts Will Praise You"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "יודוך רעיוני" }
  "Yodukha Rayonai"
  "My Thoughts Will Praise You"
}

arrangerMarkup = \markup { \italic "arr. R. Tasat" }
composerMarkup = \markup { "Turkey" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
