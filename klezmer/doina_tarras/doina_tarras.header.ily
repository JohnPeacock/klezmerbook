\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

breakDoina = { }
breakIntro = { \break }
breakSix = { }
breakA = { }
breakB = { }
breakCrep = { }
breakAsix = { }
breakBten = { }

positionA = {
  \CenterMarkOnce
  \BarAlignMark
  \override Score.RehearsalMark.padding = #.1
}
positionB = {
  \RightMarkOnce
  \BarAlignMark
  \override Score.RehearsalMark.padding = #.1
}
positionC = {
  \RightMarkOnce
  \BarAlignMark
  \override Score.RehearsalMark.padding = #.1
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "דױנע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Doina" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "דױנע" }
  "Doina"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "דױנע" }
  "Doina"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "דױנע" }
  "Doina"
}

arrangerMarkup = \markup { \italic "" }
composerMarkup = \markup { "Dave Tarras" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra
