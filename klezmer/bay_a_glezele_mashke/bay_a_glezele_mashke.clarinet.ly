\version "2.14.0"

\include "bay_a_glezele_mashke.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionB = {
  \LeftMarkOnce
  \BarAlignMark
}
positionC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}

\include "bay_a_glezele_mashke.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}
