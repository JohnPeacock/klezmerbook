\version "2.18.2"

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
  \RightMarkOnce
  \KeyAlignMark
}
positionB = {
  \RightMarkOnce
  \KeyAlignMark
}
positionC = {
  \RightMarkOnce
  \KeyAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakMain = { }
breakA = { \break }
breakB = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "הבה נגילה" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Hava Nagilah" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "הבה נגילה" }
  "Hava Nagilah"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "הבה נגילה" }
  "Hava Nagilah"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "הבה נגילה" }
  "Hava Nagilah"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "guitar-fretboards.ily"

bnPad = \barnumberpadextra
