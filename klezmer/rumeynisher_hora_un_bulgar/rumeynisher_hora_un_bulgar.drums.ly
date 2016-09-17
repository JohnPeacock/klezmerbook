\version "2.14.0"

\include "rumeynisher_hora_un_bulgar.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA  = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionB  = {
  \RightMarkOnce
  \BarAlignMark
}
positionDCAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(11.0 . -1.0)
}
positionD  = {
  \RightMarkOnce
  \BarAlignMark
}
breakA = { \break }
breakB = { \pageBreak }
breakC = { \break }

\include "rumeynisher_hora_un_bulgar.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \drumsInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \drumssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}
