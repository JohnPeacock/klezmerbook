\version "2.18.2"

\include "freylekhs_04.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionB  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionC  = {
  \KeyAlignMark
  \CenterMarkOnce
}

breakA = { \break }
breakB = { \break }

\include "freylekhs_04.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}
