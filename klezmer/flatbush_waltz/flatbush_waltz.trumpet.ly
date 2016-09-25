\version "2.18.2"

\include "flatbush_waltz.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAfor = { \break }
breakAeit = { \break }
breakAtwl = { \break }
breakA = { \break }
breakBfor = { \break }
breakBeit = { \break }
breakBtwl = { \break }

positionA = {
  \TimeAlignMark
  \RightMarkOnce
}
positionB  = {
  \BarAlignMark
  \CenterMarkOnce
}

\include "flatbush_waltz.notes.ily"
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
