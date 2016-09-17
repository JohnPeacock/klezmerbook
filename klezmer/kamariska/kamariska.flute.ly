\version "2.14.0"

\include "kamariska.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionB = {
  \RightMarkOnce
  \ClefAlignMark
}
positionC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionD = {
  \LeftMarkOnce
  \BarAlignMark
}
positionE = {
  \LeftMarkOnce
  \BarAlignMark
}
positionDSAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(2.0 . 0.0)
}

\include "kamariska.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \fluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \fluteplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
