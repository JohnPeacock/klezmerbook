\version "2.14.0"

\include "freylekhs_02.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}

breakAfft = { \noBreak }
breakAsvt = { \noBreak }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }

\include "freylekhs_02.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassClarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \Bbasssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #12
        }
    }
}
