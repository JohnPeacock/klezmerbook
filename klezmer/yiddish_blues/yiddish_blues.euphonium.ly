\version "2.18.2"

\include "yiddish_blues.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "yiddish_blues.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \euphoniumInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \euphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
