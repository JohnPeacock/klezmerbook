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
  \once \override Score.RehearsalMark #'extra-offset = #'(-8.0 . 0.0)
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
positionJII =    {
  \CenterMarkOnce
  \BarAlignMark
}
positionToG = {
  \RightMarkOnce
  \KeyAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(36.0 . -0.4)
}
positionJIII = {
  \RightMarkOnce
  \BarAlignMark
}

breakB = { \break }
breakDtwo = { \break }
breakF = { \pageBreak }
breakGtre = { \break }

\include "freylekhs_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \fluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \flutesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #32
        }
    }
}
