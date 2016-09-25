\version "2.18.2"

\include "una_tarde_de_verano.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "una_tarde_de_verano.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}
