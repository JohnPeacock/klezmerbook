\version "2.18.2"

\include "russishe_sher_01.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA  = {
  \RightMarkOnce
  \ClefAlignMark
}
positionB  = {
  \RightMarkOnce
  \ClefAlignMark
}
positionC  = {
  \RightMarkOnce
  \ClefAlignMark
}
positionD  = {
  \RightMarkOnce
  \ClefAlignMark
}

breakA = { \break }
breakB = { \break }
breakC = { \break }

\include "russishe_sher_01.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}
