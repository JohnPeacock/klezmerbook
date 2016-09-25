\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "100"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
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
positionCII = {
  \CenterMarkOnce
  \BarAlignMark
}
positionToA = {
  \RightMarkOnce
  \BarAlignMark
}
positionCIII = {
  \CenterMarkOnce
  \BarAlignMark
}

breakCIone = { }
breakCItwo = { }
breakCItre = { }
breakCIfor = { }
breakCIfiv = { }
breakCIsix = { }
breakCIsev = { }
breakCI = { }
breakCIIone = { }
breakCIItwo = { }
breakCIItre = { }
breakCIIfor = { }
breakCIIfiv = { }
breakCIIsix = { }
breakCIIsev = { }
breakCII = { }
breakCIIIone = { }
breakCIIItwo = { }
breakCIIItre = { }
breakCIIIfor = { }
breakCIIIfiv = { }
breakCIIIsix = { }
breakCIIIsev = { }
breakCIIIeit = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Arrangement from Klezmer Band Folio" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "סידס פֿרײלעכס" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Sid's Freylekh" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Sid's Freylekhs" }
headMarkup = \markup \center-column {
  \larger { "סידס פֿרײלעכס" }
  "Sid's Freylekhs"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "סידס פֿרײלעכס" }
  "Sid's Freylekhs"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "סידס פֿרײלעכס" }
  "Sid's Freylekhs"
}

composerMarkup = \markup { "Max Epstein" }
arrangerMarkup = \markup { \italic "Arr. Yale Klezmer Band" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
