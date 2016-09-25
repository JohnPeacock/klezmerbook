\version "2.18.2"

\include "shuster_un_shnayder_tants.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}


positionFC = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-4.5 . 0.0)
}

breakBfft = { \noBreak }

\include "shuster_un_shnayder_tants.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \pianoInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}
