\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Tempo di Valse (" }
temponote = \quarternote
tempovalue = \markup "100-120)"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

tempostring = \markup {
  \column {
    { \small \italic "Tempo di" }
    { \small \italic "Valse" }
    \line { \small"(" \tiny \temponote \small " = 100-120)" } }
}

positionSA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionFN = {
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
positionD = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDSFN = {
  \LeftMarkOnce
  \BarAlignMark
}

breakAsxt = { \noBreak }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup =  \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
%  \override #'(font-size . 12) { "עד לאַ אַהבתי די" } % title in hebrew goes here
%  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Padespan" }
  \override #'(font-size . 9)  { "(Pas D'Espagnol)" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Russian Spanish Waltz" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kammen Vol. 1, No. 37" }

headMarkup = \markup {
  "Padespan (K. 1-37)"
}
evenTitleHeaderMarkup = \markup {
  "Padespan (K. 1-37)"
}
oddTitleHeaderMarkup = \markup {
  "Padespan (K. 1-37)"
}

arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
