\version "2.14.0"

\include "russishe_sher_01.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA  = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionB  = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC  = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionD  = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakA = { \break }
breakB = { \break }
breakC = { \break }

\include "russishe_sher_01.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \euphoniumInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \euphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}
