\version "2.18.2"

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
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}

breakA = { \break }
breakB = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "פֿיסעלעך, פֿיסילעך" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Fiselekh, Fiselekh" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Feet, Feet" }

headMarkup = \markup \center-column {
  \larger { "פֿיסעלעך, פֿיסילעך" }
  "Fiselekh, Fiselekh"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "פֿיסעלעך, פֿיסילעך" }
  "Fiselekh, Fiselekh"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "פֿיסעלעך, פֿיסילעך" }
  "Fiselekh, Fiselekh"
}

arrangerMarkup = \markup { \italic "" }
composerMarkup = \markup { "Abe Elenkrig's Orchestra" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
