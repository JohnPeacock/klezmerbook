\version "2.18.2"

\include "oyfn_pripetshik.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "oyfn_pripetshik.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \transpose e d { \altosaxplustenorsubscore }
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #5
        }
    }
}
