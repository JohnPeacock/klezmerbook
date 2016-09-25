\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "80"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

tempoSprefix = \markup { "Languid" }
tempoSnote = \quarternote
tempoSvalue = \markup "80"

markupTS = \markup {
  \column \left-align {
    { \small \italic \tempoSprefix }
    { \line { \small "(" \tiny \tempoSnote  \small " = " \small \tempoSvalue \small ")" } }
  }
}

tempoFprefix = \allegrotempoprefix
tempoFnote = \quarternote
tempoFvalue = \allegrotempovalue

markupTF = \markup {
  \column \left-align {
    { \small \italic \tempoFprefix }
    { \line { \small "(" \tiny \tempoFnote  \small " = " \small \tempoFvalue \small ")" } }
  }
}

positionSA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB =  {
  \CenterMarkOnce
  \BarAlignMark
}
positionC =  {
  \CenterMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}

breakSI = { }
breakFItwo = { }
breakFIsix = { }
breakFIeit = { }
breakFIten = { }
breakFItwl = { }
breakFI = { }
breakAtyo = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Lead sheet from Viva El Klezmer, arrangement based on performance by The Tummelers and a midi by Michael Greenspan" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "שערעלע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Sherele" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "שערעלע" }
  "Sherele"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "שערעלע" }
  "Sherele"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "שערעלע" }
  "Sherele"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
