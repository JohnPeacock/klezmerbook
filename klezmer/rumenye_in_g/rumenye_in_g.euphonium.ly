\version "2.18.2"

\include "rumenye_in_g.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakA = { \break }
breakB = { \break }
breakCtwfiv = { \noBreak }
breakCtwsev = { \noBreak }

\include "rumenye_in_g.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \euphoniumInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \euphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
            system-count = #18
        }
    }
}
