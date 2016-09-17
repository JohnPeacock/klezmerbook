\version "2.14.0"

\include "freylekhs_04.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionB = {
  \RightMarkOnce
  \ClefAlignMark
}

\include "freylekhs_04.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}
