\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \allegrotempoprefix
temponote = \quarternote
tempovalue = \allegrotempovalue

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
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionC  = {
  \CenterMarkOnce
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

breakC = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }
breakCCtwo = { }

soloclar = \markup { "1st time only" }
solotrum = \markup { "2nd time only" }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "לעבעדיק און פֿרײלעך" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Lebedik un Freylekh" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Lively and Joyous" }

headMarkup = \markup \center-column {
  \larger { "לעבעדיק און פֿרײלעך" }
  "Lebedik un Freylekh"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "לעבעדיק און פֿרײלעך" }
  "Lebedik un Freylekh"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "לעבעדיק און פֿרײלעך" }
  "Lebedik un Freylekh"
}

composerMarkup = \markup \column \right-align {
  "Peretz Sandler"
  "Harry Kandel's Orchestra, 1918"
  "Abe Schwartz, 1927"
  " "
}
arrangerMarkup = \markup \column \right-align {
  \italic "Arr. Bokov/Koffman"
  \italic "Adapt. Dick Schoeller"
}

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "print-drum-fragments.ily"
snarerollhalfcresc = \drummode { << sna2:32 { s4\< s4\! } >> }

bnPad = \barnumberpadextra
