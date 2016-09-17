\version "2.14.0"

\include "polish_polka.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(12.0 . -1.0)
}
positionD = {
  \CenterMarkOnce
  \BarAlignMark
}

breakAfor = { \break }
breakBone = { \break }
breakBsix = { \break }
breakCtre = { \break }
breakC = { \break }
breakDfiv = { \break }

\include "polish_polka.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
