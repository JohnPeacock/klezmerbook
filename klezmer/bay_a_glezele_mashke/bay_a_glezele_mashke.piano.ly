\version "2.18.2"

\include "bay_a_glezele_mashke.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
%    systems-per-page = #5
}

positionC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionD = {
  \LeftMarkOnce
  \BarAlignMark
}

\include "bay_a_glezele_mashke.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \pianoInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #13
        }
    }
}
