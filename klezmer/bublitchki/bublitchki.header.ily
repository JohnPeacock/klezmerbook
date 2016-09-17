\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "138"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakAelv = { \break }
breakAtwl = { \noBreak }
breakA = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "בײגעלעך" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Beygelekh / Bublitchki" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "בײגעלעך" }
  "Beygelekh / Bublitchki"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "בײגעלעך" }
  "Beygelekh / Bublitchki"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "בײגעלעך" }
  "Beygelekh / Bublitchki"
}

arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }
composerMarkup = \markup { "Traditional" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
