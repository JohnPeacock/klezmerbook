\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup "Swing"
temponote = \quarternote
tempovalue = "140"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

markupTintro = \markup { \small \italic "Rubato" }

positionA = {
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

breakAtwone = { }
breakAtwtwo = { }
breakAtwtre = { }
breakAtwfor = { }
breakAtwfiv = { }
breakAtwsix = { }
breakAtwsev = { }
breakAsweit = { }
breakAtwnin = { }
breakAthty = { }
breakAthone = { }
breakAthtwo = { }

breakBtwone = { }
breakBtwtwo = { }
breakBtwtre = { }
breakBtwfor = { }
breakBtwfiv = { }
breakBtwsix = { }
breakBtwsev = { }
breakBsweit = { }
breakBtwnin = { }
breakBthty = { }
breakBthone = { }
breakBthtwo = { }

breakCtwone = { }
breakCtwtwo = { }
breakCtwtre = { }
breakCtwfor = { }
breakCtwfiv = { }
breakCtwsix = { }
breakCtwsev = { }
breakCsweit = { }
breakCtwnin = { }
breakCthty = { }
breakCthone = { }
breakCthtwo = { }
breakCthtre = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "From piano arrangement by E. Kalendar in The World's Most Popular Jewish Songs" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "בײַ מיר ביםטו שײן" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Bay Mir Bistu Sheyn 1" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "You're Beautiful to Me" }
headMarkup = \markup \center-column {
    \larger { "בײַ מיר ביםטו שײן" }
    "Bay Mir Bistu Sheyn 1"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "בײַ מיר ביםטו שײן" }
    "Bay Mir Bistu Sheyn 1"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "בײַ מיר ביםטו שײן" }
    "Bay Mir Bistu Sheyn 1"
}

composerMarkup = \markup { "S. Secunda" }
arrangerMarkup = \markup { \italic "Arr. Jud Flato" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
