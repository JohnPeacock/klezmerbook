\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Intro. " }
temponote = \quarternote
tempovalue = \markup "80"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionSA = {
  \BarAlignMark
  \CenterMarkOnce
}
positionB =  {
  \BarAlignMark
  \CenterMarkOnce
}
positionC =  {
  \BarAlignMark
  \CenterMarkOnce
}
positionTC = {
  \BarAlignMark
  \LeftMarkOnce
}
positionDS = {
  \BarAlignMark
  \LeftMarkOnce
}
positionCC = {
  \BarAlignMark
  \RightMarkOnce
}

breakC = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }
breakCCtwo = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Arrangement follows Margolis in Joy of Klez" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "קאָלעמײקע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Kolemeyke" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kolomeike" }

headMarkup = \markup \center-column {
  \larger { "קאָלעמײקע" }
  "Kolemeyke"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "קאָלעמײקע" }
  "Kolemeyke"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "קאָלעמײקע" }
  "Kolemeyke"
}


composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup \italic \column \right-align {
  "Arr. Margolis"
  "Adapt. Dick Schoeller"
}

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
