\version "2.18.2"

\include "glezele_yash.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "glezele_yash.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoFluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altofluteplusaltosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}
