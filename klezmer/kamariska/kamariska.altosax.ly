\version "2.18.2"

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
  \once \override Score.RehearsalMark #'extra-offset = #'(1.8 . 0.0)
  \once \override Score.RehearsalMark #'padding = #6.8
}

\include "kamariska.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
