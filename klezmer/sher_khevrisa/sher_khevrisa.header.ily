\version "2.18.0"

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

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
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

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "שער פֿון חבריסע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Sher fun Khevrisa" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Sher (from Khevrisa)"
}
headMarkup = \markup \center-column {
  \larger { "שער פֿון חבריסע" }
  "Sher (from Khevrisa)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "שער פֿון חבריסע" }
  "Sher (from Khevrisa)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "שער פֿון חבריסע" }
  "Sher (from Khevrisa)"
}

arrangerMarkup = \markup { \italic "Arr: John Chambers" }
composerMarkup = "Wolf Kostakowsky, Brooklyn 1916"

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
