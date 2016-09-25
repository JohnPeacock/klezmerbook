\version "2.18.2"

\include "honga.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB  = {
  \ClefAlignMark
  \RightMarkOnce
}
positionC  = {
  \ClefAlignMark
  \RightMarkOnce
}
positionD  = {
  \ClefAlignMark
  \RightMarkOnce
}
positionE  = {
  \ClefAlignMark
  \RightMarkOnce
}
breakEett = { \noBreak }
breakBL = { \noBreak }
breakAeit = { \break }
breakBeit = { \break }
breakCeit = { \break }
breakDeit = { \pageBreak }

\include "honga.notes.ily"
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
