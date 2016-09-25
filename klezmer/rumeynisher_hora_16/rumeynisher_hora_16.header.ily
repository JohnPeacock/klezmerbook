\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Moderato (Hora)" }
temponote = \quarternote
tempovalue = \markup "60"

tempoprefixtwo = \markup { "Allegro (Bulgar)" }
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
  \BarAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionSD = {
  \RightMarkOnce
  \BarAlignMark
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
}
positionE = {
  \CenterMarkOnce
  \BarAlignMark
}
positionF = {
  \CenterMarkOnce
  \BarAlignMark
}
positionG = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDSFN = {
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
    \override #'(font-size . 10) { "16" }
    " "
    \override #'(font-size . 12) { "רומײנישער האָראַ" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Rumeynisher Hora 16" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Roumanian Hora 16"
  "Kammen Vol. 1, No. 16"
}

headMarkup = \markup \center-column {
  \line {
    "16" " " \larger { "רומײנישער האָראַ" }
  }
  "Rumeynisher Hora (K. 1-16)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line {
    "16" " " \larger { "רומײנישער האָראַ" }
  }
  "Rumeynisher Hora (K. 1-16)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line {
    "16" " " \larger { "רומײנישער האָראַ" }
  }
  "Rumeynisher Hora (K. 1-16)"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "print-drum-fragments.ily"

bnPad = \barnumberpadextra
