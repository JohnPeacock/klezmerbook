\version "2.18.2"

\include "araber_tants.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionE = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakB = { \break }
breakCtwo = { \break }
breakC = { \pageBreak }
breakEtwl = { \break }

\include "araber_tants.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \transpose e d { \basssubscore }
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #17
        }
    }
}
