\version "2.14.0"

\include "baym_rebn_in_palestina.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakAsix = { \break }
breakAtwl = { \break }
sectionBreakOne = { \break }
breakBfiv = { \break }
sectionBreakTwo = { \pageBreak }
breakCfor = { \break }
breakCeit = { \break }
breakCtwl = { \break }
sectionBreakThree = { }
sectionBreakFour = { \pageBreak }
breakGsev = { \noBreak }

\include "baym_rebn_in_palestina.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #19
        }
    }
}
