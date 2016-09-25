\version "2.18.2"

\include "fun_tashlikh.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "fun_tashlikh.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
