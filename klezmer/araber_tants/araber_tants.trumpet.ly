\version "2.14.0"

\include "araber_tants.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakC = { \pageBreak }
breakE = { \noBreak }
breakBL = { \noBreak }

\include "araber_tants.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \trumpetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trumpetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #24
        }
    }
}
