\version "2.18.2"

\include "mayn_shtetl_yas.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionSA = {
  \LeftMarkOnce
  \BarAlignMark
}
positionC = {
  \LeftMarkOnce
  \BarAlignMark
}

\include "mayn_shtetl_yas.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}
