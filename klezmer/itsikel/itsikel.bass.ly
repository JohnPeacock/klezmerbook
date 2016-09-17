\version "2.14.0"

\include "itsikel.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAtre = { \break }
breakAsix = { \break }
breakA = { \break }
breakBfor = { \break }
breakBeit = { \break }
breakBelv = { \break }
breakBfrt = { \break }

\include "itsikel.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
