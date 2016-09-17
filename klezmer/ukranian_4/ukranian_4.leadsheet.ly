\version "2.14.0"

\include "ukranian_4.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionDC = {
  \RightMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionFC = {
  \RightMarkOnce
  \BarAlignMark
}

\include "ukranian_4.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #7
        }
    }
}
