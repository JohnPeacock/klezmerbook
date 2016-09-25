\version "2.18.2"

\include "polish_polka.header.ily"
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
  \RightMarkOnce
  \ClefAlignMark
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(13.0 . -4.5)
}
positionD = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.5 . 0.5)
}

\include "polish_polka.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \accordionsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}
