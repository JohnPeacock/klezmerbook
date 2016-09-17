\version "2.18.0"

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

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "לא ישׂא גוי" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Lo Yisa Goy" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Nation Shall Not Lift Up" }

headMarkup = \markup \center-column {
  \larger { "לא ישׂא גוי" }
  "Lo Yisa Goy"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "לא ישׂא גוי" }
  "Lo Yisa Goy"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "לא ישׂא גוי" }
  "Lo Yisa Goy"
}

arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }
composerMarkup = \markup { "Shalom Altman" }
poetMarkup = \markup { "Isaiah 2:4" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
