\version "2.14.0"

\include "polish_polka.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionD = {
  \CenterMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(2.0 . 2.0)
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(13.0 . -1.5)
}

breakDsev = { \noBreak }
breakDnin = { \noBreak }

\include "polish_polka.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \trumpetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trumpetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}
