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

middleBreak = { }
breakCone = { }
breakCtwo = { }
breakCtre = { }
breakOne = { }
breakTwo = { }
breakTre = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "מה-טבו" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Mah Tovu" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "How Goodly" }

headMarkup = \markup \center-column {
  \larger { "מה-טבו" }
  "Mah Tovu"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "מה-טבו" }
  "Mah Tovu"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "מה-טבו" }
  "Mah Tovu"
}

% arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }
composerMarkup = \markup { "Arnold Harris" }
poetMarkup = \markup { "Liturgy" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

copyrightMarkup = \markup { "Copyright © 2010, Arnold Harris" }
