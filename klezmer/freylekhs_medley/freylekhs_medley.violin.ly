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
  \once \override Score.RehearsalMark #'extra-offset = #'(-11.0 . 0.0)
}
positionD =    {
  \CenterMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'outside-staff-priority = #1
}
positionE =    {
  \LeftMarkOnce
  \BarAlignMark
}
positionF =    {
  \RightMarkOnce
  \BarAlignMark
}
positionJ = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionJII = {
  \LeftMarkOnce
  \BarAlignMark
}
positionToG = {
  \RightMarkOnce
  \ClefAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(12.0 . -2.0)
}
positionJIII = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakF = { \pageBreak }

\include "freylekhs_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #30
        }
    }
}
