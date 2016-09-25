\version "2.18.2"

\include "russishe_sher_medley.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
    systems-per-page = #8
}

positionARa = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-4.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #2.5
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionD = {
  \RightMarkOnce
  \ClefAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.5 . -1.0)
  \once \override Score.RehearsalMark #'padding = #2.5
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionARb = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #1.8
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionI = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-1.5 . 0.0)
  \once \override Score.RehearsalMark #'padding = #3.2
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionJ = {
  \LeftMarkOnce
  \BarAlignMark
}
positionL = {
  \LeftMarkOnce
  \BarAlignMark
}

breakARA = { \break }
breakARBtht = { \break }

\include "russishe_sher_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \euphoniumInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \euphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #24
        }
    }
}
