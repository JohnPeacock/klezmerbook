\version "2.18.2"

\include "rumeynisher_hora_13.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
breakAfft = { \noBreak }
breakAsvt = { \noBreak }
breakCsev = { \noBreak }
breakCnin = { \noBreak }
\include "rumeynisher_hora_13.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}
