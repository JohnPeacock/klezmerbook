\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup ""
temponote = \quarternote
tempovalue = \markup "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

markupT = \markup \column \left-align { "Recitative," "tempo ad lib." }

breakINone = { }
breakINtwo = { }
breakIN = { }
breakA = { \break }
breakCtwone = { }
breakCtwtwo = { }
breakCtwtre = { }
breakCtwfor = { }
breakCtwfiv = { }
breakCtwsix = { }
breakCtwsev = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "רומעניע, רומעניע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Rumenye, Rumenye (in G)" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "רומעניע, רומעניע" }
  "Rumenye, Rumenye (in G)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "רומעניע, רומעניע" }
  "Rumenye, Rumenye (in G)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "רומעניע, רומעניע" }
  "Rumenye, Rumenye (in G)"
}

arrangerMarkup = \markup { \italic "Arr: Shalom Secunda" }
composerMarkup = \markup { "Aaron Lebedeff" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
