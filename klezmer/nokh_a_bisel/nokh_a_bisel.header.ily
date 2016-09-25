\version "2.18.2"

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

positionA = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakA = { \break }
breakB = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "נאָך אַ ביסל" }
  \larger { "אַ טענצל פֿאַר די מחותּנים" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Nokh a Bisel" }
  \override #'(font-size . 7)  { "(A Tentzel Far Die Mekhutonim)" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "A Little Bit More"
  "(A dance for the mothers in law)"
  "Kammen Vol. 1, No. 8"
}

headMarkup = \markup \center-column {
  \larger { "נאָך אַ ביסל" }
  "Nokh a Bisel (K. 1-8)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "נאָך אַ ביסל" }
  "Nokh a Bisel (K. 1-8)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "נאָך אַ ביסל" }
  "Nokh a Bisel (K. 1-8)"
}

arrangerMarkup = \markup { \italic "Arr. Jack Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
