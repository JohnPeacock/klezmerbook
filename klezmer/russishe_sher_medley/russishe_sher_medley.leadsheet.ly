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
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-4.5 . 0.0)
  \once \override Score.RehearsalMark #'padding = #4.0
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionD = {
  \RightMarkOnce
  \KeyAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-2.0 . -1.0)
  \once \override Score.RehearsalMark #'padding = #4.0
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionARb = {
  \RightMarkOnce
  \KeyAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-4.0 . -0.0)
  \once \override Score.RehearsalMark #'padding = #3.0
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionI = {
  \RightMarkOnce
  \KeyAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-1.5 . -0.0)
  \once \override Score.RehearsalMark #'padding = #4.0
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionJ = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionK = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(1.0 . 1.0)
}
positionL = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakE = { \pageBreak }

\include "russishe_sher_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #28
        }
    }
}
