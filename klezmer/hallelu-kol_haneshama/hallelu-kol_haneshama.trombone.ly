\version "2.18.2"

\include "hallelu-kol_haneshama.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "hallelu-kol_haneshama.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count=#4
        }
    }
}
