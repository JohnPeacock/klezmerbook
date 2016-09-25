\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Tempo di Polka," }
temponote = \quarternote
tempovalue = \markup "110-120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

tempostring = \markup {
  \column {
    { \small \italic "Tempo di Polka" }
    \line { \small"(" \tiny \temponote \small " = 110-120)" } }
}

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
positionFN = {
  \RightMarkOnce
  \BarAlignMark
}
positionD = {
  \RightMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}

% header basics

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "פּױלישע פּאָלקאַ" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Polish Polka" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Kammen Vol. 1, No. 33" }

headMarkup = \markup {
  \larger { "פּױלישע פּאָלקאַ" }
  "Polish Polka (K. 1-33)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "פּױלישע פּאָלקאַ" }
  "Polish Polka (K. 1-33)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "פּױלישע פּאָלקאַ" }
  "Polish Polka (K. 1-33)"
}
arrangerMarkup = \markup { \italic "Arr. J. & J. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
