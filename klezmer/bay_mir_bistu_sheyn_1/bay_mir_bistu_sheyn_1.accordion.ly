\version "2.18.2"

\include "bay_mir_bistu_sheyn_1.header.ily"

\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA = {
  \CenterMarkOnce
  \ClefAlignMark
}
positionB = {
  \RightMarkOnce
  \BarAlignMark
}
breakIN = { \break }

\include "bay_mir_bistu_sheyn_1.notes.ily"
\include "staves-and-scores.ily"

accordionsubscore = <<
    \bandmchordnames
    \pianochordnames
    \pianononamestaff
>>

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \accordionsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #20
        }
    }
}
