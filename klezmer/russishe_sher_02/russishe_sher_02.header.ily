\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \moderatotempoprefix
temponote = \quarternote
tempovalue = \moderatotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionD  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionE  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDCAL = {
  \LeftMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 10) { "II" }
    " "
      \override #'(font-size . 12) { "רוסישע שער" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Russishe Sher No. II" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Russian Sher No. II"
  "Kammen Vol. 1, No. 28"
}

headMarkup = \markup \center-column {
  \line { "II" " " \larger { "רוסישע שער" } }
  "Russishe Sher No. II (K. 1-28)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "II" " " \larger { "רוסישע שער" } }
  "Russishe Sher No. II (K. 1-28)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "II" " " \larger { "רוסישע שער" } }
  "Russishe Sher No. II (K. 1-28)"
}

arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
