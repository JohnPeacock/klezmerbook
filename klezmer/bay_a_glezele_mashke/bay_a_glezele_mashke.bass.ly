\version "2.18.2"

\include "bay_a_glezele_mashke.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB = {
  \RightMarkOnce
  \BarAlignMark
}
positionC = {
  \RightMarkOnce
  \BarAlignMark
}
positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}

\include "bay_a_glezele_mashke.notes.ily"
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
