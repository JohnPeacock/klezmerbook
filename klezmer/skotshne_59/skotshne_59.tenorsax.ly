\version "2.18.2"

\include "skotshne_59.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
    systems-per-page = #5
}

positionA = {
  \CenterMarkOnce
  \KeyAlignMark
}

\include "skotshne_59.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tenorSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \tenorsaxplusclarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}
