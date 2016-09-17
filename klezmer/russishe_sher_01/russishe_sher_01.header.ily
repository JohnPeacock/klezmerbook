\version "2.18.0"

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
    \override #'(font-size . 10) { "I" }
    " "
      \override #'(font-size . 12) { "רוסישע שער" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Russishe Sher No. I" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Russian Sher No. I"
  "Kammen Vol. 1, No. 27"
}

headMarkup = \markup \center-column {
  \line { "I" " " \larger { "רוסישע שער" } }
  "Russishe Sher No. I (K. 1-27)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "I" " " \larger { "רוסישע שער" } }
  "Russishe Sher No. I (K. 1-27)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "I" " " \larger { "רוסישע שער" } }
  "Russishe Sher No. I (K. 1-27)"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
