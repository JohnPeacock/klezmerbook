\version "2.18.2"

\include "kazatshok_03.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionC = {
  \CenterMarkOnce
  \ClefAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(1.0 . 0.0)
}
positionDCAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(7.0 . -1.0)
  \once \override Score.RehearsalMark #'padding = #7.5
}
positionRT = {
  \LeftMarkOnce
  \BarAlignMark
}

\include "kazatshok_03.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}
