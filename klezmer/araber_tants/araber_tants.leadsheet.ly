\version "2.18.2"

\include "araber_tants.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionD = {
  \LeftMarkOnce
  \BarAlignMark
}

breakC = { \pageBreak }
breakDsix = { \break }
breakEfor = { \break }
breakEfrt = { \break }

\include "araber_tants.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \transpose e d { \leadsheetsubscore }
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #18
        }
    }
}
