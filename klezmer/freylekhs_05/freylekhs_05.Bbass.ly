\version "2.18.2"

\include "freylekhs_05.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakAfft = { \noBreak }
breakAsvt = { \noBreak }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }

\include "freylekhs_05.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassClarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \Bbasssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #11
        }
    }
}
