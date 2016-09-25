\version "2.18.2"

\include "tum-balalayke.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionS = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}

breakAone = { \break }
breakAfor = { \break }
breakAsev = { \break }
breakAten = { \break }
breakAtht = { \break }

\include "tum-balalayke.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
