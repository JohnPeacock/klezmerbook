\version "2.18.2"

\include "nokh_a_glezle_vayn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
    systems-per-page = #9
}

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}

\include "nokh_a_glezle_vayn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \drumsInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \drumssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #18
        }
    }
}
