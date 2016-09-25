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
  \once \override Score.RehearsalMark #'extra-offset = #'(-15.0 . 0.0)
}
positionD =    {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'outside-staff-priority = #1
}
positionJ =    {
  \CenterMarkOnce
  \KeyAlignMark
}
positionJII =    {
  \CenterMarkOnce
  \KeyAlignMark
}
positionToG = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(10.0 . 0.0)
}
positionJIII =    {
  \CenterMarkOnce
  \KeyAlignMark
}

breakB = { \pageBreak }
breakF = { \pageBreak }
breakH = { \pageBreak }
breakJsxt = { \pageBreak }

\include "freylekhs_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #20
        }
    }
}
