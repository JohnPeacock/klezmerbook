\version "2.18.2"

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

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \transpose e d' { \violinplustenorsubscore }
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #24
        }
    }
}
