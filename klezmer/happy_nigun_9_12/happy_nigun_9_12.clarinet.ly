\version "2.14.0"

\include "happy_nigun_9_12.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakAfrt = { \break }
breakAsvt = { \noBreak }
breakA = { \break }
breakB = { \break }
breakCfft = { \noBreak }

\include "happy_nigun_9_12.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}
