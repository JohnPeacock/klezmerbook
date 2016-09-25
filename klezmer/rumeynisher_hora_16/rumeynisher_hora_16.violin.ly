\version "2.18.2"

\include "rumeynisher_hora_16.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(12.0 . -3.0)
}
positionG = {
  \CenterMarkOnce
  \KeyAlignMark
}
breakC = { \pageBreak }
breakFtre = { \pageBreak }
\include "rumeynisher_hora_16.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #19
        }
    }
}
