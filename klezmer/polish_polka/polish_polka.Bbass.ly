\version "2.18.2"

\include "polish_polka.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(6.0 . 0.7)
}
\include "polish_polka.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassClarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \Bbasssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #5
        }
    }
}
