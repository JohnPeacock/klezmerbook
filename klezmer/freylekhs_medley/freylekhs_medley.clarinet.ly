\version "2.18.2"

\include "freylekhs_medley.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionC =    {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-12.0 . 0.0)
}
positionD =    {
  \CenterMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'outside-staff-priority = #1
}
positionJII = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionToG = {
  \RightMarkOnce
  \KeyAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(17.0 . -0.5)
}
positionJIII = {
  \RightMarkOnce
  \BarAlignMark
}

breakB = { \break }
breakF = { \pageBreak }

\include "freylekhs_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #32
        }
    }
}
