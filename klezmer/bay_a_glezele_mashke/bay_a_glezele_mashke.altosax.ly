\version "2.18.2"

\include "bay_a_glezele_mashke.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}

\include "bay_a_glezele_mashke.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

altosaxplustenorsubscore = <<
    \bandmchordnames
    \altosaxchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
        \override MultiMeasureRest #'expand-limit = #1
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altosaxnotes }
    }

    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        \override MultiMeasureRest #'expand-limit = #1
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorforaltonotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \altosaxplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
	    system-count = #15
        }
    }
}
