\version "2.18.2"

\include "rumeynisher_hora_un_bulgar.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionB  = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionDCAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(4.0 . 0.0)
}
positionD  = {
  \CenterMarkOnce
  \KeyAlignMark
}
breakA = { \break }
breakB = { \pageBreak }
breakC = { \break }

\include "rumeynisher_hora_un_bulgar.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #19
        }
    }
}
