\version "2.18.2"

\include "nakht_in_gan_eydn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAsev = { \break }
breakAtht = { \break }
breakA = { \break }
breakBeit = { \break }
breakB = { \break }
breakCsix = { \break }
breakCtht = { \break }

\include "nakht_in_gan_eydn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \euphoniumInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \euphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
