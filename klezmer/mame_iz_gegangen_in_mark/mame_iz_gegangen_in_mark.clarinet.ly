\version "2.18.2"

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

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetsubscore
        \include "score-header.ily"
        \layout {
            system-count=#6
            \include "translators.ily"
        }
    }
}
