\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup "Easy Swing"
temponote = \quarternote
tempovalue = \markup "140"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

markupTintro = \markup { \small \italic "Rubato" }
markupStraightEight = \markup { \small \italic "Straight Eighths" }
markupSwingEight = \markup { \small \italic "Swing Eighths" }

markStraightEight = { \mark \markupStraightEight }
markSwingEight = { \mark \markupSwingEight }

positionA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionE = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionF = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionStraightEight = {
  \RightMarkOnce
  \KeyAlignMark
}
positionSwingEight = {
  \RightMarkOnce
  \KeyAlignMark
}
breakAsev = { \noBreak }
breakAnin = { \noBreak }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אַבי געזונט" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Abi Gezunt 1" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "אַבי געזונט" }
  "Abi Gezunt 1"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "אַבי געזונט" }
  "Abi Gezunt 1"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "אַבי געזונט" }
  "Abi Gezunt 1"
}

arrangerMarkup = \markup { \italic "Arr: Jud Flato" }
composerMarkup = \markup { "Abe Ellstein" }
poetMarkup = \markup { "Molly Picon" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
