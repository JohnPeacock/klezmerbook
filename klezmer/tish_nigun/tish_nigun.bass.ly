\version "2.18.2"

\include "tish_nigun.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAtwo = { \break }
breakAsix = { \break }
breakBtwo = { \break }
breakCone = { \break }
breakCfiv = { \break }
breakDtwo = { \break }

\include "tish_nigun.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \basssubscorenoremove
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #7
        }
    }
}
