\version "2.18.2"

\include "lebedik_un_freylekh.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionB  = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakAsev = { \noBreak }
breakAnin = { \noBreak }
breakB = { \break }

\include "lebedik_un_freylekh.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplusaltosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}
