\version "2.18.0"

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

positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakA = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "פּאַפּיראָסן" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Papirosn" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "פּאַפּיראָסן" }
  "Papirosn"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "פּאַפּיראָסן" }
  "Papirosn"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "פּאַפּיראָסן" }
  "Papirosn"
}

arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }
composerMarkup = \markup { "Yablakoff, Herman (1932)" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
