\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \moderatotempoprefix
temponote = \quarternote
tempovalue = \moderatotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDC = {
  \RightMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionFC = {
  \RightMarkOnce
  \BarAlignMark
}

breakFCone = { }
breakFCtwo = { }
breakFCtre = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 9)  { "Ukranian Dance No. IV" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kammen Vol. 1, No. 23" }

headMarkup = \markup { "Ukranian Dance No. IV (K. 1-23)" }
evenTitleHeaderMarkup = \markup { "Ukranian Dance No. IV (K. 1-23)" }
oddTitleHeaderMarkup = \markup { "Ukranian Dance No. IV (K. 1-23)" }
arrangerMarkup = \markup { \italic "Arr. Joseph Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
