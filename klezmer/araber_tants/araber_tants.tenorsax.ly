\version "2.18.2"

\include "araber_tants.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}

% breakV = { \break }
breakEfor = { \break }
breakC = { \pageBreak }

\include "araber_tants.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tenorSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \transpose e d { \clarinetplustenorsubscore }
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #20
        }
    }
}
