\version "2.18.2"

\include "tsena.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC  = {
  \CenterMarkOnce
  \BarAlignMark
}

\include "tsena.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
