\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "120-130"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "טערק אין אַמעריקע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Terk in Amerika" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Turk in America" }

headMarkup = \markup \center-column {
  \larger { "" }
  "Terk in Amerika"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "" }
  "Terk in Amerika"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "" }
  "Terk in Amerika"
}

arrangerMarkup = \markup { \italic "Transcription: Glenn Dickson" }
composerMarkup = \markup { "Naftule Brandwein" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
