\version "2.18.2"

\include "russishe_sher_medley.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionARa = {
  \RightMarkOnce
  \ClefAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #1
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionD = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.5 . 0.0)
  \once \override Score.RehearsalMark #'padding = #1.5
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionARb = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #1.7
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionI = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-1 . 0.0)
  \once \override Score.RehearsalMark #'padding = #1
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionJ = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionL = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakG = { \pageBreak }
breakARAsvt = { \noBreak }
breakARBtht = { \break }

\include "russishe_sher_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
