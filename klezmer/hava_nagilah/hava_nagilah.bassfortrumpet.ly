\version "2.18.2"

\include "hava_nagilah.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA = {
  \RightMarkOnce
  \ClefAlignMark
}
positionB = {
  \RightMarkOnce
  \ClefAlignMark
}
positionC = {
  \RightMarkOnce
  \ClefAlignMark
}

breakA = { \break }
breakAtwo = { \break }
breakB = { \break }
breakBtwo = { \break }

\include "hava_nagilah.notes.ily"

bandmNV = {
    \time 4/4
    \tempo \tempostring
    \bandmNVbody
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

\include "staves-and-scores.ily"

instrumentMarkup = \bassForTrumpetInstrumentMarkup

bassfortrumpetsubscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \bandmchordnames
    \trumpetchordnames

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \bassfortrumpetnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \bassfortrumpetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}
