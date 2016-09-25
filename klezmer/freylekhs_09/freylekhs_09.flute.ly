\version "2.18.2"

\include "freylekhs_09.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionA = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakA = { \break }
breakB = { \pageBreak }
breakC = { \break }

\include "freylekhs_09.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \fluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \fluteplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}
