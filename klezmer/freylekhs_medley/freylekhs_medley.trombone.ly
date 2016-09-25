\version "2.18.2"

\include "freylekhs_medley.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionDS =   {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-1.0 . 0.0)
}
positionC =    {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(2.0 . 0.0)
}
positionD =    {
  \CenterMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'outside-staff-priority = #1
}
positionE = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionJ = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionJII = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionToG = {
  \RightMarkOnce
  \KeyAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(38.0 . -3.0)
}
positionJIII = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakB = { \break }
breakD = { \break }
breakF = { \pageBreak }

\include "freylekhs_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
            system-count = #32
        }
    }
}
