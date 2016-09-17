\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Accelerando" }
temponote = \quarternote
tempovalue = \markup "80-160"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = { }
positionB =  { }
positionDC = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "זיבן פערציק" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Zibn Fertsik" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "7:40" }

headMarkup = \markup \line {
  "(7:40)" "זיבן פערציק"
}
evenTitleHeaderMarkup = \markup \line {
  "(7:40)" "זיבן פערציק"
}
oddTitleHeaderMarkup = \markup \line {
  "(7:40)" "זיבן פערציק"
}

arrangerMarkup = \markup { "" }
composerMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
