\version "2.18.2"

\include "baym_rebn_in_palestina.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB  = {
  \BarAlignMark
  \CenterMarkOnce
}
positionG  = {
  \BarAlignMark
  \CenterMarkOnce
}

\include "baym_rebn_in_palestina.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \basssubscorenoremove
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}
