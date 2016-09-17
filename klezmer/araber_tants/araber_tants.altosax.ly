\version "2.14.0"

\include "araber_tants.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakV = { \break }
breakE = { \noBreak }
breakBL = { \noBreak }

\include "araber_tants.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

altosaxsubscore = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \bandmchordnames
    \altosaxchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
        voltaOnThisStaff = ##t
    } {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \melodyforaltonotes }
    }

    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        voltaOnThisStaff = ##f
    } {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altosaxnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \altosaxsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #24
        }
    }
}
