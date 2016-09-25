\version "2.18.2"

\include "sids_freylekhs.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakCII = { \pageBreak }

positionToA = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(21.0 . -2.0)
}
positionCII = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionCIII = {
  \CenterMarkOnce
  \KeyAlignMark
}

\include "sids_freylekhs.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}
