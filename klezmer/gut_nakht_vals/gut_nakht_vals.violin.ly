\version "2.18.2"

\include "gut_nakht_vals.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "gut_nakht_vals.notes.ily"
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
