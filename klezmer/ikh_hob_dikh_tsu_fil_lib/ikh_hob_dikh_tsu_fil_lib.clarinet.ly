\version "2.18.2"

\include "ikh_hob_dikh_tsu_fil_lib.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionE = {
  \CenterMarkOnce
  \KeyAlignMark
}
breakA = { \break }
breakD = { \break }

\include "ikh_hob_dikh_tsu_fil_lib.notes.ily"

bandmNV = \clarinetbandm

\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #16
        }
    }
}
