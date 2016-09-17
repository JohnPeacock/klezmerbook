\version "2.14.0"

\include "unknown.header.ily"
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

\include "unknown.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tenorSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
%        \tenorsaxsubscore
% fix this later
        \clarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
