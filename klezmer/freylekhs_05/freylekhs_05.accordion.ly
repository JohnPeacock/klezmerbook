\version "2.14.0"

\include "freylekhs_05.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakAfft = { \noBreak }
breakAsvt = { \noBreak }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }
breakB = { \pageBreak }

\include "freylekhs_05.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \accordionsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}
