\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Slowly with steady rythmn" }
temponote = \quarternote
tempovalue = \markup "60"

tempoprefixtwo = \markup { "Bulgar (lively)" }
temponotetwo = \quarternote
tempovaluetwo = \markup "120-130"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

tempostringtwo = \markup {
  \column \left-align {
    { \small \italic \tempoprefixtwo }
    \line { \small "(" \tiny \temponotetwo \small " = " \small \tempovaluetwo \small ")" } }
}

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}
positionDCAL = {
  \RightMarkOnce
  \BarAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionSC = {
  \RightMarkOnce
  \BarAlignMark
}
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}
positionD  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionCCRT = {
  \RightMarkOnce
  \BarAlignMark
}

breakD = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "רומײנישער האָראַ" }
  \override #'(font-size . 12) { "און בולגאַר" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Rumeynisher Hora un Bulgar" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Roumanian Hora and Bulgar"
  "Kammen Vol. 9, No. 29"
}

headMarkup = \markup \center-column {
  \larger { "רומײנישער האָראַ און בולגאַר" }
  "Rumeynisher Hora un Bulgar (K. 9-29)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "רומײנישער האָראַ און בולגאַר" }
  "Rumeynisher Hora un Bulgar (K. 9-29)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "רומײנישער האָראַ און בולגאַר" }
  "Rumeynisher Hora un Bulgar (K. 9-29)"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "print-drum-fragments.ily"

bnPad = \barnumberpadextra
