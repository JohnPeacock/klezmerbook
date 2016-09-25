\version "2.18.2"

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
  \CenterMarkOnce
  \BarAlignMark
}
positionFC = {
  \RightMarkOnce
  \BarAlignMark
}

\include "ukranian_4.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \fluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \fluteplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #5
        }
    }
}
