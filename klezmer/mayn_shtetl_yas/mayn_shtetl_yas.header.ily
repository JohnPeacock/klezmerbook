\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Moderate" }
temponote = \quarternote
tempovalue = \markup "80"

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
breakCCtwo = { }

arco = \markup { "arco" }
pizz = \markup { "pizz." }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Arrangement from Klezmer Plus!" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "מײַן שטעטל יאַס" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Mayn Shtetl Yas" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "My Little Town of Yas" }

headMarkup = \markup \center-column {
    \larger { "מײַן שטעטל יאַס" }
    "Mayn Shtetl Yas"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "מײַן שטעטל יאַס" }
    "Mayn Shtetl Yas"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "מײַן שטעטל יאַס" }
    "Mayn Shtetl Yas"
}

composerMarkup = \markup { "Max Kletter" }
arrangerMarkup = \markup { \italic "Arr. & Transcr. P. Sokolow" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "print-drum-fragments.ily"
\include "guitar-fretboards.ily"

bnPad = \barnumberpadextra
