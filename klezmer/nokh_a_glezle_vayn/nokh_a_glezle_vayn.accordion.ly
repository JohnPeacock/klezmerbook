\version "2.18.2"

\include "nokh_a_glezle_vayn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakA = { \break }
breakB = { \break }
breakC = { \pageBreak }
breakDfrt = { \pageBreak }

\include "nokh_a_glezle_vayn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \accordionsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #16
        }
    }
}
