\version "2.14.0"

\include "tangissimo.header.ily"
% NOTE INTENTIONALLY USED SCORE SIZE HERE TO REDUCE EXCESSIVE NUMBERS OF BREAKS!!!
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionDAB   = {
  \RightMarkOnce
  \ClefAlignMark
}

breakAIIfiv = { \pageBreak }
breakAIIItre = { \pageBreak }

\include "tangissimo.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \pianoInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
