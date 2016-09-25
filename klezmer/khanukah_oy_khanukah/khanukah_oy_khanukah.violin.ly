\version "2.18.2"

\include "khanukah_oy_khanukah.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
positionA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionTC = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-3.0 . 0.0)
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionToA = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-1.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #4.5
}
positionCC = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-13.0 . 0.0)
}
breakA = { \break }
\include "khanukah_oy_khanukah.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #17
        }
    }
}
