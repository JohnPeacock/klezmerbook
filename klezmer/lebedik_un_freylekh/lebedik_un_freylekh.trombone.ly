\version "2.18.2"

\include "lebedik_un_freylekh.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAfiv = { \break }
breakBtwo = { \break }
breakBnin = { \break }
breakB = { \break }
breakCsix = { \break }
breakCtht = { \break }

\include "lebedik_un_freylekh.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
