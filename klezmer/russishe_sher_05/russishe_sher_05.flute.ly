\version "2.18.2"

\include "russishe_sher_05.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}

breakA = { \break }
breakB = { \break }
breakC = { \pageBreak }
breakD = { \break }

\include "russishe_sher_05.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \fluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \flutesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #14
        }
    }
}
