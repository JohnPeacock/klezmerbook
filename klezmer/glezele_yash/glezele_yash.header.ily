\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Lively" }
temponote = \quarternote
tempovalue = \markup "130"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionCH = {
  \RightMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Lead sheet from Mir Trogn a Gesang" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אַ גלעזעלע יש" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "A Glezele Yash" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "A Glass of Wine" }

headMarkup = \markup \center-column {
    \larger { "אַ גלעזעלע יש" }
    "A Glezele Yash"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "אַ גלעזעלע יש" }
    "A Glezele Yash"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "אַ גלעזעלע יש" }
    "A Glezele Yash"
}

composerMarkup = \markup { "V. Shainsky" }
poetMarkup = \markup { "Yoysef Kerler" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

breakA = { \break }
breakB = { \break }
breakC = { \break }
breakD = { \break }
breakE = { \break }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
