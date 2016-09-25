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

breakA = { \break }
breakB = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "דעם טריסקער רבנס חסיד" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Dem Trisker Rebns Khosid" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Of the Trisker Rebbes Chasid" }

headMarkup = \markup \center-column {
  \larger { "דעם טריסקער רבנס חסיד" }
  "Dem Trisker Rebns Khosid"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "דעם טריסקער רבנס חסיד" }
  "Dem Trisker Rebns Khosid"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "דעם טריסקער רבנס חסיד" }
  "Dem Trisker Rebns Khosid"
}

arrangerMarkup = \markup { \italic "Arr: John Chambers" }
composerMarkup = \markup { "Dave Tarras, 1925" }

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
