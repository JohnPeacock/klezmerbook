\version "2.14.0"

\include "shpilt_mir_klezmorimlekh.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "shpilt_mir_klezmorimlekh.notes.ily"
\include "staves-and-scores.ily"

bassfortrumpetnotes = \transpose bes c'' {
    \bassnotes
}

instrumentMarkup = \bassForTrumpetInstrumentMarkup

bassfortrumpetsubscore = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \bandmchordnames
    \trumpetchordnames

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        voltaOnThisStaff = ##f
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
            system-count = #8
        }
    }
}
