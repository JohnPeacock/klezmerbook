\version "2.18.2"

\include "abi_gezunt_1.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
breakC = { \pageBreak }
\include "abi_gezunt_1.notes.ily"
\include "staves-and-scores.ily"

pianosubscore = <<
    \bandmchordnames
    \pianochordnames
    \pianononamestaff
>>

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #22
        }
    }
}
