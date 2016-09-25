\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Lively," }
temponote = \quarternote
tempovalue = \markup "120-140"

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
positionCCRT = {
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
    \override #'(font-size . 10) { "2" }
    " "
    \override #'(font-size . 12) { "פֿון דער חופּה" }
  }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Fun der Khupe #2" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "From the Chupa #2"
  "Kammen Vol. 1, No. 3"
}

headMarkup = \markup \center-column {
  \line {
    "2" " " \larger { "פֿון דער חופּה" }
  }
  "Fun der Khupe #2 (K. 1-3)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \line {
    "2" " " \larger { "פֿון דער חופּה" }
  }
  "Fun der Khupe #2 (K. 1-3)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \line {
    "2" " " \larger { "פֿון דער חופּה" }
  }
  "Fun der Khupe #2 (K. 1-3)"
}

composerMarkup = \markup \column \right-align {
  "Abe Ellenkrieg's Orchestra, 1913"
  "Abe Schwartz, as Di Zilberne Khasene"
  " "
}
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
