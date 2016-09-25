\version "2.18.2"

\include "freylekhs_in_dm.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAfft = { \noBreak }
breakAsvt = { \noBreak }
breakBfft = { \noBreak }
breakBsvt = { \noBreak }

\include "freylekhs_in_dm.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #12
        }
    }
}
