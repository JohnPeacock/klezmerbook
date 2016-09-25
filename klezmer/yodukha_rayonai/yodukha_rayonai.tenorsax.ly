\version "2.18.2"

\include "yodukha_rayonai.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "yodukha_rayonai.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tenorSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \tenorsaxsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #4
        }
    }
}
