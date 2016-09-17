\version "2.14.0"

\include "rumeynisher_hora_16.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
positionA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(13.0 . -1.0)
  \once \override Score.RehearsalMark #'padding = #7
}
\include "rumeynisher_hora_16.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \drumsInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \drumssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #7
        }
    }
}
