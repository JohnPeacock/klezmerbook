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
  \once \override Score.RehearsalMark #'extra-offset = #'(20.0 . 0.0)
}
positionD = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.5 . 0.5)
}

breakDsev = { \noBreak }
breakDnin = { \noBreak }

\include "polish_polka.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}
