\version "2.14.0"

\include "nokh_a_glezle_vayn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionA = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionSD = {
  \RightMarkOnce
  \ClefAlignMark
}
positionE = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakCfrt = { \noBreak }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }
breakCett = { \noBreak }
breakTR = { \pageBreak }

\include "nokh_a_glezle_vayn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tenorSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}
