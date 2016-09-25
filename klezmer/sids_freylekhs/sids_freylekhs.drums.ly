\version "2.18.2"

\include "sids_freylekhs.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionC = {
  \RightMarkOnce
  \ClefAlignMark
}
positionToA = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(4.0 . 0.0)
}
positionCIII = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(1.0 . 0.8)
}

\include "sids_freylekhs.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \drumsInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \drumssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
