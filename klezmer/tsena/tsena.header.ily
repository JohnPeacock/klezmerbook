\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \allegrotempoprefix
temponote = \quarternote
tempovalue = \allegrotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = { }
positionB = { }
positionC = { }

breakA = { \break }
breakB = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "From piano arrangement by E. Kalendar in The World's Most Popular Jewish Songs" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "צאנה צאנה" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Tsena Tsena" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "צאנה צאנה" }
  "Tsena Tsena"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "צאנה צאנה" }
  "Tsena Tsena"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "צאנה צאנה" }
  "Tsena Tsena"
}

composerMarkup = \markup { "I. Miron and J. Grossman" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
