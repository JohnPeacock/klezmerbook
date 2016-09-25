\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "100"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionB = {
  \RightMarkOnce
  \ClefAlignMark
}
positionC = {
  \RightMarkOnce
  \ClefAlignMark
}
positionD = {
  \RightMarkOnce
  \ClefAlignMark
}
positionE = {
  \RightMarkOnce
  \ClefAlignMark
}
positionF = {
  \RightMarkOnce
  \ClefAlignMark
}

breakA = { \break }
breakB = { \break }
breakC = { \break }
breakD = { \break }
breakE = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 9)  { "Yiddish Blues" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "" }

headMarkup = \markup \center-column {
    "Yiddish Blues"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    "Yiddish Blues"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    "Yiddish Blues"
}

arrangerMarkup = \markup { \column { { " " } { \italic "Transcr: Hankus Netsky" } } }
composerMarkup = \markup { "Lt. Joseph Frankel's Orchestra" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
