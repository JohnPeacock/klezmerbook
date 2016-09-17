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
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionCC = {
  \RightMarkOnce
  \BarAlignMark
}

markupOctOpt = \markup { "8va optional" }

bnPad = \barnumberpadextra

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "רוסישע שער" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Russishe Sher" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Russian Sher" }

headMarkup = \markup \center-column {
  \larger { "רוסישע שער" }
  "Russishe Sher"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "רוסישע שער" }
  "Russishe Sher"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "רוסישע שער" }
  "Russishe Sher"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup \italic \column \right-align {
  "Arr. Yoelin"
  "Adapt. Dick Schoeller"
}

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

