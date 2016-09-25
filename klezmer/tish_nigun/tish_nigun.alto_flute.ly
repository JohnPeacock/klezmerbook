\version "2.18.2"

\include "tish_nigun.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
    systems-per-page = #5
}

positionC  = {
  \RightMarkOnce
  \KeyAlignMark
}

breakB = { \break }
breakDtwo = { \break }

\include "tish_nigun.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoFluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altofluteplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}
