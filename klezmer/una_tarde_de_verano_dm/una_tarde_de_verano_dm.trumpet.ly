\version "2.18.2"

\include "una_tarde_de_verano_dm.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "una_tarde_de_verano_dm.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \trumpetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \transpose c d, { \trumpetsubscore }
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}
