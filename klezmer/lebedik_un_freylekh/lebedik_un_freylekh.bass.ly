\version "2.18.2"

\include "lebedik_un_freylekh.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB  = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC  = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakA = { \break }
breakB = { \break }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }

\include "lebedik_un_freylekh.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}
