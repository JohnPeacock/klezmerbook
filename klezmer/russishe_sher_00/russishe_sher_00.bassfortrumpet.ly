\version "2.14.0"

\include "russishe_sher_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

\include "russishe_sher_00.notes.ily"
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
        \omit Voice.StringNumber
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
            system-count = #7
        }
    }
}
