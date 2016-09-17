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
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionD = {
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

breakD = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Arrangement from Klezmer Band Folio" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "בײַ אַ גלעזעלע מאַשקע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Bay a Glezele Mashke" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Over a Glass of Whiskey" }
headMarkup = \markup \center-column {
    \larger { "בײַ אַ גלעזעלע מאַשקע" }
    "Bay a Glezele Mashke"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "בײַ אַ גלעזעלע מאַשקע" }
    "Bay a Glezele Mashke"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "בײַ אַ גלעזעלע מאַשקע" }
    "Bay a Glezele Mashke"
}

composerMarkup = \markup { "Abe Schwartz" }
arrangerMarkup = \markup { \italic "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
