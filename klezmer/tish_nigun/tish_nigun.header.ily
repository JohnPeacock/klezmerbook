\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Slowly" }
temponote = \quarternote
tempovalue = \markup "105"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionSA = {
  \CenterMarkOnce
  \BarAlignMark
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
positionCT = {
  \RightMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}
positionCC = {
  \RightMarkOnce
  \BarAlignMark
}

breakD = { \noBreak }
breakBL = { \noBreak }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Arrangement from Klezmer Plus!" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "טיש ניגון" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Tish Nigun" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Table Melody" }

headMarkup = \markup \center-column {
  \larger { "טיש ניגון" }
  "Tish Nigun"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "טיש ניגון" }
  "Tish Nigun"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "טיש ניגון" }
  "Tish Nigun"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. & Trans. P. Sokolow" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "print-drum-fragments.ily"
\include "guitar-fretboards.ily"

bnPad = \barnumberpadextra
