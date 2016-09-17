\version "2.14.0"

\include "ukranian_4.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionDC = {
  \RightMarkOnce
  \ClefAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionFC = {
  \RightMarkOnce
  \KeyAlignMark
}

\include "ukranian_4.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \euphoniumInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \euphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #7
        }
    }
}
