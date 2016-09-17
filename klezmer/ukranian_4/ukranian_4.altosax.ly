\version "2.14.0"

\include "ukranian_4.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionDC = {
  \RightMarkOnce
  \BarAlignMark
}
positionC = {
  \RightMarkOnce
  \BarAlignMark
}
positionFC = {
  \RightMarkOnce
  \BarAlignMark
}

\include "ukranian_4.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
