\version "2.18.2"

\include "freylekhs_05.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakAfft = { \noBreak }
breakAsvt = { \noBreak }
breakB = { \pageBreak }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }

\include "freylekhs_05.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \euphoniumInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \euphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}
