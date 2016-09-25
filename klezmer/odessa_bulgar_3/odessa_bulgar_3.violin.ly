\version "2.18.2"

\include "odessa_bulgar_3.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
    systems-per-page = #5
}

breakAfft = { \noBreak }
breakAsvt = { \noBreak }
breakBfft = { \noBreak }
breakBsvt = { \noBreak }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }

\include "odessa_bulgar_3.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}
