\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "120-136"

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
positionFN = {
  \LeftMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDSFN = {
  \LeftMarkOnce
  \BarAlignMark
}

breakAttone = { }
breakAtttwo = { }
breakAtttre = { }
breakAttfor = { }
breakA = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "קױלן" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Koyln" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Coals" }

headMarkup = \markup \center-column {
    \larger { "קױלן" }
    "Koyln"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "קױלן" }
    "Koyln"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "קױלן" }
    "Koyln"
}

arrangerMarkup = \markup { "" }
composerMarkup = \markup { "Mishka Tsiganoff, 1919" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
