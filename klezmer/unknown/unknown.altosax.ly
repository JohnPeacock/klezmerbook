\version "2.18.2"

\include "unknown.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAfor = { \break }
breakA = { \break }
breakBsix = { \break }
breakB = { \break }
breakCfor = { \break }

\include "unknown.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
