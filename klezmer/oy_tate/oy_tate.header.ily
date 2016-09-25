\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \adagiotempoprefix
temponote = \quarternote
tempovalue = \adagiotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \KeyAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אױ טאַטע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Oy Tate" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "אױ טאַטע" }
  "Oy Tate"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "אױ טאַטע" }
  "Oy Tate"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "אױ טאַטע" }
  "Oy Tate"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "guitar-fretboards.ily"

bnPad = \barnumberpadextra
