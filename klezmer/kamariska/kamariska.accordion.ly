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
  \RightMarkOnce
  \ClefAlignMark
}
positionD = {
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
  \once \override Score.RehearsalMark #'extra-offset = #'(8.0 . 0.75)
}

breakA = { \break }
breakB = { \break }
breakC = { \break }

\include "kamariska.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}
