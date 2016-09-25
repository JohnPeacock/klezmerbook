\version "2.18.2"

\include "shtiler_bulgar.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakA = { \break }
breakBtwl = { \pageBreak }
breakB = { \break }

phrasingSlurDown = \override PhrasingSlur   #'direction = #-1
phrasingSlurUp = \override PhrasingSlur   #'direction = #1
phrasingSlurNeutral = \override PhrasingSlur   #'direction = #0

\include "shtiler_bulgar.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
