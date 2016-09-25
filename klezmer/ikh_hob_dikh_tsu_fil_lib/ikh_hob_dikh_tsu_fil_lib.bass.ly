\version "2.18.2"

\include "ikh_hob_dikh_tsu_fil_lib.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA = {
  \LeftMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionD = {
  \LeftMarkOnce
  \BarAlignMark
}

breakBfor = { \break }

\include "ikh_hob_dikh_tsu_fil_lib.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #18
        }
    }
}
