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
  \once \override Score.RehearsalMark #'extra-offset = #'(-1.0 . 0.0)
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionToA = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-1.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #2.5
}
positionCC = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-4.0 . 0.0)
}
breakA = { \break }
\include "khanukah_oy_khanukah.notes.ily"
bandmNV = { \clarinetbandm }
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #18
        }
    }
}
