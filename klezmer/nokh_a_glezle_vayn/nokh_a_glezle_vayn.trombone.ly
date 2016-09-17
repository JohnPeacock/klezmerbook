\version "2.14.0"

\include "nokh_a_glezle_vayn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "nokh_a_glezle_vayn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonepluseuphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #12
        }
    }
}
