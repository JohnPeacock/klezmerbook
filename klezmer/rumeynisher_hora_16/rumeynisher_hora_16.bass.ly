\version "2.18.2"

\include "rumeynisher_hora_16.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA = {
  \LeftMarkOnce
  \BarAlignMark
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(15.5 . -1.0)
}
positionG = {
  \RightMarkOnce
  \ClefAlignMark
}

breakC = { \pageBreak }

\include "rumeynisher_hora_16.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #14
        }
    }
}
