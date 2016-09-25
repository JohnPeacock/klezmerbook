\version "2.18.2"

\include "polish_polka.header.ily"
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
    \RightMarkOnce
    \ClefAlignMark
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(24 . -0.5)
  \once \override Score.RehearsalMark #'padding = #5
}
positionD = {
    \RightMarkOnce
    \ClefAlignMark
}

breakA = { \break }
breakB = { \break }
breakC = { \break }

\include "polish_polka.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \drumsInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \drumssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}
