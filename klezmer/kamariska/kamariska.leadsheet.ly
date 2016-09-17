\version "2.14.0"

\include "kamariska.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionD = {
  \RightMarkOnce
  \ClefAlignMark
}
positionE = {
  \RightMarkOnce
  \ClefAlignMark
}
positionDSAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(3.5 . 0.0)
}

breakCfor = { \pageBreak }

\include "kamariska.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #14
        }
    }
}
