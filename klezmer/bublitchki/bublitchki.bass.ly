\version "2.18.2"

\include "bublitchki.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "bublitchki.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscorewithlyrics
%        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #7
         }
    }
}
