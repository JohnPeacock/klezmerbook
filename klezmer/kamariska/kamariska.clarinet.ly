\version "2.14.0"

\include "kamariska.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
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

positionB = {
  \RightMarkOnce
  \ClefAlignMark
}
positionE = {
  \RightMarkOnce
  \ClefAlignMark
}
positionDSAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(8.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #6.8
}
 
breakA = { \break }
breakD = { \break }

\include "kamariska.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #11
        }
    }
}
