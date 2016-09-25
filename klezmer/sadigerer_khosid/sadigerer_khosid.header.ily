\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "110"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

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

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "סאַדיגערער חסיד" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Sadigerer Khosid" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Chasid from Sadegur" }

headMarkup = \markup \center-column {
    \larger { "סאַדיגערער חסיד" }
    "Sadigerer Khosid"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "סאַדיגערער חסיד" }
    "Sadigerer Khosid"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "סאַדיגערער חסיד" }
    "Sadigerer Khosid"
}

arrangerMarkup = \markup { \column { { " " } { \italic "Arr: John Chambers" } } }
composerMarkup = \markup { \column { { "Joseph Moskowitz" } { "Abe Schwartz Orchestra, 1917" } } }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
