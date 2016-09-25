\version "2.18.2"

\include "rumeynisher_hora_16.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
positionFN = {
  \RightMarkOnce
  \KeyAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(21.0 . -5.0)
}
positionG = {
  \CenterMarkOnce
  \KeyAlignMark
}
\include "rumeynisher_hora_16.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #16
        }
    }
}
