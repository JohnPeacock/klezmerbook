\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Moderato (Hora)" }
temponote = \quarternote
tempovalue = \markup "100"

tempoprefixtwo = \markup { "Allegro moderato (Bulgar)" }
temponotetwo = \quarternote
tempovaluetwo = \markup "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

tempostring = \markup {
  \column {
    { \small \italic "Moderato (Hora)" }
    \line { \small "(" \tiny \temponote \small " = 60)" } }
}

tempostringtwo = \markup {
  \column {
    { \small \italic "Allegro (Bulgar)" }
    \line { \small "(" \tiny \temponotetwo \small " = 120-130)" } }
}

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionTII = {
  \CenterMarkOnce
  \BarAlignMark
}
positionSD = {
  \CenterMarkOnce
  \BarAlignMark
}
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionE = {
  \CenterMarkOnce
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

breakTRone = { }
breakTR = { }
breakE = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "נאָך אַ גלעזלע װאַן" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Nokh a Glezele Vayn" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Another Glass of Wine" }

headMarkup = \markup \center-column {
    \larger { "נאָך אַ גלעזלע װאַן" }
    "Nokh a Glezele Vayn"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "נאָך אַ גלעזלע װאַן" }
    "Nokh a Glezele Vayn"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "נאָך אַ גלעזלע װאַן" }
    "Nokh a Glezele Vayn"
}

composerMarkup = \markup { "David Tarras, 1929" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "print-drum-fragments.ily"

bnPad = \barnumberpadextra
