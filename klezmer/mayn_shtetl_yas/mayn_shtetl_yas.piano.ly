\version "2.18.2"

\include "mayn_shtetl_yas.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
breakBfor = { \noBreak }

\include "mayn_shtetl_yas.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \pianoInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}
