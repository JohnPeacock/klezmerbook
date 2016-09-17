\version "2.14.0"

\include "itsikel.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA  = {
  \ClefAlignMark
  \RightMarkOnce
}
positionB  = {
  \ClefAlignMark
  \RightMarkOnce
}
breakAsix = { \break }
breakA = { \break }
breakBeit = { \break }

\include "itsikel.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \drumsInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \drumssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
