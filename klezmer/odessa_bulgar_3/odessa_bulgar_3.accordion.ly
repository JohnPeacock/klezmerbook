\version "2.14.0"

\include "odessa_bulgar_3.header.ily"
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
breakCfft = { \noBreak }
breakCsvt = { \noBreak }

\include "odessa_bulgar_3.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \accordionsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
