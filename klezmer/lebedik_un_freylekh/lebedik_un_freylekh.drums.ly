\version "2.14.0"

\include "lebedik_un_freylekh.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB  = {
  \RightMarkOnce
  \ClefAlignMark
}
positionC  = {
  \RightMarkOnce
  \ClefAlignMark
}

breakA = { \break }
breakB = { \break }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }

\include "lebedik_un_freylekh.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \drumsInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \drumssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}
