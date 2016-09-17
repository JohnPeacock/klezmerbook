\version "2.14.0"

\include "sids_freylekhs.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakCII = { \pageBreak }

positionCII = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionToA = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(19.0 . -2.0)
}
positionCIII = {
  \CenterMarkOnce
  \KeyAlignMark
}

\include "sids_freylekhs.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #14
        }
    }
}
