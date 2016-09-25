\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "60"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionFN = {
  \CenterMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "דער גאַסן ניגון" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Der Gasn Nigun" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "The Street Tune" }

headMarkup = \markup \center-column {
    \larger { "דער גאַסן ניגון" }
    "Der Gasn Nigun"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "דער גאַסן ניגון" }
    "Der Gasn Nigun"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "דער גאַסן ניגון" }
    "Der Gasn Nigun"
}

arrangerMarkup = \markup { \italic "Arr: John Chambers" }
composerMarkup = \markup { "Kandel's Orchestra, 1923" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

taglineMarkup = \markup {
    \teeny \smaller \left-align \column {
        \line {
            \lower #1.6 { "LilyPond was here 2.5.29 -- automatically converted from ABC" }
        }
        \line {
            \lower #.8 { "ABC file from http://trillian.mit.edu/~jc/music/abc/Klezmer/" }
        }
        \line { "Additional cleanup by " \maintainerMarkup " (" \maintainerEmailMarkup ")" }
    }
}

bnPad = \barnumberpadextra
