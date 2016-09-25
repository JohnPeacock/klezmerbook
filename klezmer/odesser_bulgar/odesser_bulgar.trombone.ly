\version "2.18.2"

\include "odesser_bulgar.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionD = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(1.0 . 0.0)
}

\include "odesser_bulgar.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}
