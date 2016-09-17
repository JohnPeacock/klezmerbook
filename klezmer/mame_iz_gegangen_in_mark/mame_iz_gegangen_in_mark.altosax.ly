\version "2.14.0"

\include "mame_iz_gegangen_in_mark.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
breakA = { \break }
\include "mame_iz_gegangen_in_mark.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxsubscore
        \include "score-header.ily"
        \layout {
            system-count=#6
            \include "translators.ily"
        }
    }
}
