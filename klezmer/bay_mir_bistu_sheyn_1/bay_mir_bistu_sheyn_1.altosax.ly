\version "2.18.2"

\include "bay_mir_bistu_sheyn_1.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA = {
  \RightMarkOnce
  \ClefAlignMark
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakIN = { \break }

\include "bay_mir_bistu_sheyn_1.notes.ily"

bandmNV = \trumpetbandm

\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #16
        }
    }
}
