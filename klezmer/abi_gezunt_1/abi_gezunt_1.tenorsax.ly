\version "2.18.2"

\include "abi_gezunt_1.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "abi_gezunt_1.notes.ily"

bandmNV = \tenorsaxbandm

\include "staves-and-scores.ily"

instrumentMarkup = \tenorSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \tenorsaxsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #17
        }
    }
}
