\version "2.14.0"

\include "ikh_hob_dikh_tsu_fil_lib.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakA = { \break }
breakC = { \break }

\include "ikh_hob_dikh_tsu_fil_lib.notes.ily"

bandmNV = \flutebandm

\include "staves-and-scores.ily"

instrumentMarkup = \altoFluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altofluteplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #16
        }
    }
}
