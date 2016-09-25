\version "2.18.2"

\include "russishe_sher_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakAfft = { \noBreak }
breakAsvt = { \noBreak }
breakB = { \break }

\include "russishe_sher_00.notes.ily"
clarinetforaltonotes = \transpose ees bes, { \clarinetnotes }
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxplusclarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}
