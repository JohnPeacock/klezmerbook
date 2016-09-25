\version "2.18.2"

\include "kamariska.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
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
  \RightMarkOnce
  \ClefAlignMark
}
positionDSAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-2.0 . 0.0)
}
positionE = {
  \RightMarkOnce
  \ClefAlignMark
}

breakA = { \break }
breakC = { \break }

\include "kamariska.notes.ily"
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
