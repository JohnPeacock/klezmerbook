\version "2.14.0"

\include "nokh_a_glezle_vayn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionSD = {
  \RightMarkOnce
  \ClefAlignMark
}

breakTR = { \pageBreak }
breakCfrt = { \noBreak }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }
breakCett = { \noBreak }

\include "nokh_a_glezle_vayn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \fluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \fluteplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}
