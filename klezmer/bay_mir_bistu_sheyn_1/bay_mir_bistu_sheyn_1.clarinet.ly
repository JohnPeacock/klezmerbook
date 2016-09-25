\version "2.18.2"

\include "bay_mir_bistu_sheyn_1.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionA = {
  \LeftMarkOnce
  \BarAlignMark
}
positionB = {
  \CenterMarkOnce
  \ClefAlignMark
}

\include "bay_mir_bistu_sheyn_1.notes.ily"

bandmNV = \clarinetbandm

\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #16
        }
    }
}
