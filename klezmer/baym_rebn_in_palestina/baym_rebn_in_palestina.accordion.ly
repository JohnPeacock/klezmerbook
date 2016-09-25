\version "2.18.2"

\include "baym_rebn_in_palestina.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAsix = { \break }
breakAtwl = { \break }
sectionBreakOne = { \break }
breakBfiv = { \break }
sectionBreakTwo = { \pageBreak }
breakCfiv = { \break }
breakCelv = { \break }
sectionBreakFour = { \pageBreak }
breakGsev = { \noBreak }

\include "baym_rebn_in_palestina.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscorenoremove
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #19
        }
    }
}
