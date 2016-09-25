\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "110"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionB = {
  \RightMarkOnce
  \ClefAlignMark
}
positionC = {
  \RightMarkOnce
  \ClefAlignMark
}

breakA = { \break }
breakB = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "פֿון תּשליך" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Fun Tashlikh" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "" }

headMarkup = \markup \center-column {
  \larger { "פֿון תּשליך" }
  "Fun Tashlikh"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "פֿון תּשליך" }
  "Fun Tashlikh"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "פֿון תּשליך" }
  "Fun Tashlikh"
}

arrangerMarkup = \markup { \column { { " " } { \italic "Transcr: Glenn Dickson" } } }
composerMarkup = \markup { "Naftule Brandwein" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
