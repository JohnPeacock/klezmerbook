\version "2.18.2"

\include "ukranian_2.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "ukranian_2.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassClarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \Bbasssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}
