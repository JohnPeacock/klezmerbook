\version "2.18.2"

\include "bolter_bulgar.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionCT = {
  \RightMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}
breakBsix = { \break }
breakAsev = { \break }

\include "bolter_bulgar.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \pianoInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #5
        }
    }
}
