\version "2.18.2"

\include "russishe_sher_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakBfiv = { \pageBreak }
breakA = { \break }

\include "russishe_sher_00.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \pianoInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
