\version "2.14.0"

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
positionF =    {
  \RightMarkOnce
  \KeyAlignMark
}
positionG =    {
  \CenterMarkOnce
  \KeyAlignMark
}
positionJ =    {
  \CenterMarkOnce
  \KeyAlignMark
}
positionJII =    {
  \LeftMarkOnce
  \BarAlignMark
}
positionToG = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(12.0 . -3.0)
}
positionJIII = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakF = { \pageBreak }

\include "freylekhs_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #29
        }
    }
}
