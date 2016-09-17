\version "2.18.0"

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

breakAtwone = { }
breakAtwtwo = { }
breakAtwtre = { }
breakAtwfor = { }
breakAtwfiv = { }
breakAtwsix = { }
breakAtwsev = { }
breakAtweit = { }
breakAtwnin = { }
breakAtty = { }
breakAttone = { }
breakAtttwo = { }
breakAtttre = { }
breakAttfor = { }
breakAttfiv = { }
breakAttsix = { }
breakAttsev = { }
breakAtteit = { }
breakAttnin = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "שפּילט מיר קלעזמאָרימלעך" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Shpilt Mir Klezmorimlekh" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Play for me Klezmorim"
  "Kammen Vol. 1, No. 11"
}

headMarkup = \markup \center-column {
  \larger { "שפּילט מיר קלעזמאָרימלעך" }
  "Shpilt Mir Klezmorimlekh (K. 1-11)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "שפּילט מיר קלעזמאָרימלעך" }
  "Shpilt Mir Klezmorimlekh (K. 1-11)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "שפּילט מיר קלעזמאָרימלעך" }
  "Shpilt Mir Klezmorimlekh (K. 1-11)"
}

arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
