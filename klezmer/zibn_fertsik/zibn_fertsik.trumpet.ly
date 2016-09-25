\version "2.18.2"

\include "zibn_fertsik.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakAtre = { \break }
breakBone = { \break }
breakBfiv = { \break }

\include "zibn_fertsik.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \trumpetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trumpetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
