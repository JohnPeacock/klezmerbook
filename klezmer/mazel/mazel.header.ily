\version "2.18.2"

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
  \override #'(font-size . 12) { "מזל" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Mazel" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "מזל" }
  "Mazel"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "מזל" }
  "Mazel"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "מזל" }
  "Mazel"
}

arrangerMarkup = \markup { \italic "Arr: Unknown" }
composerMarkup = \markup { "Music: Abe Ellstein" }
poetMarkup = \markup \column \left-align {
  "Lyrics: Molly Picon"
  "English: Stanley Lionel"
  "From the film Mamele"
}

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
