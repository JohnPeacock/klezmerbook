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

markupSAI =   \markup {
  \override #'(baseline-skip . 2.75)
  \center-column {
    { \box \bold \huge "A1" }
    { \musicglyph #"scripts.segno" }
  }
}
markupDAB = \markup { \box \bold \huge "D" "Alternative " \box \bold \huge "B" }

markSAI = { \mark \markupSAI }
markDAB = { \mark \markupDAB }

positionSAI   = {
  \CenterMarkOnce
  \BarAlignMark
}
positionAII   = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionB     = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionAIII  = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionAIV   = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionTC    = {
  \LeftMarkOnce
  \BarAlignMark
}
positionC     = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionDS    = {
  \RightMarkOnce
  \BarAlignMark
}
positionDAB   = {
  \RightMarkOnce
  \BarAlignMark
}
positionToC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionCC    = {
  \RightMarkOnce
  \BarAlignMark
}

breakAIfor = { }
breakAI = { }
breakAIIfor = { }
breakAIIfiv = { }
breakAIIsix = { }
breakAIIsev = { }
breakAII = { }
breakAIIIone = { }
breakAIIItwo = { }
breakAIIItre = { }
breakAIIIfor = { }
breakAIIIfiv = { }
breakAIIIsix = { }
breakAIIIsev = { }
breakAIII = { }
breakAIVfor = { }
breakAIVsev = { }
breakAIV = { }
breakD = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }

scoreBreak = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 9)  { "Tangissimo" }
  \override #'(font-size . 10) { " " }
}
subsubtitleMarkup = \markup { "Intro A1 A2 B A3 A4 C A1 A2 D A3 A4 to Coda" }

headMarkup = \markup \center-column {
  "Tangissimo"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  "Tangissimo"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  "Tangissimo"
}

composerMarkup = \markup { "Reiner Oberbeck" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
