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
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionE = {
  \CenterMarkOnce
  \BarAlignMark
}
breakA = { \break }

\include "ikh_hob_dikh_tsu_fil_lib.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup %\markup { \larger "Accordion" }

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #20
        }
    }
}
