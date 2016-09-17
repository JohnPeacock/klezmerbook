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

positionSA = {
  \CenterMarkOnce
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
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}
positionD = {
  \CenterMarkOnce
  \BarAlignMark
}
positionE = {
  \CenterMarkOnce
  \BarAlignMark
}
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionToD = {
  \LeftMarkOnce
  \BarAlignMark
}
positionCC = {
  \RightMarkOnce
  \BarAlignMark
}

breakVone = { }
breakV = { }
breakBL = { }
breakCCone = { }
breakCCtwo = { }
breakCCtre = { }
breakCCfor = { }
breakCCfiv = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Lead sheet from Compleat Klezmer" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אַראַבער טאַנץ" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Araber Tants" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Arabic Dance" }
headMarkup = \markup \center-column {
    \larger { "אַראַבער טאַנץ" }
    "Araber Tants"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "אַראַבער טאַנץ" }
    "Araber Tants"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "אַראַבער טאַנץ" }
    "Araber Tants"
}

composerMarkup = \markup { "Naftule Bandwein Orchestra, 1926" }
arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "print-drum-fragments.ily"

bnPad = \barnumberpadextra
