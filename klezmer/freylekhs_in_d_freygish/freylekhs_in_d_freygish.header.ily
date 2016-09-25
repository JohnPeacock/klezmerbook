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
positionTC = {
  \LeftMarkOnce
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

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \line {
    \override #'(font-size . 10) { "D Freygish" }
    " "
    \override #'(font-size . 12) { "פֿרײלעכס" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Freylekhs in D Freygish" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \line { "D Freygish" " " \larger { "פֿרײלעכס" } }
  "Freylekhs in D Freygish"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line { "D Freygish" " " \larger { "פֿרײלעכס" } }
  "Freylekhs in D Freygish"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line { "D Freygish" " " \larger { "פֿרײלעכס" } }
  "Freylekhs in D Freygish"
}

arrangerMarkup = \markup { \italic "From the repertoire of Sid Beckerman" }
composerMarkup = \markup { "Unknown" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
