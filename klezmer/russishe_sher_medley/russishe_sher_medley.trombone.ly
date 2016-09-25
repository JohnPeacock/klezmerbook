\version "2.18.2"

\include "russishe_sher_medley.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
    systems-per-page = #8
}

positionTC = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.0 . -1.0)
}
positionARa = {
  \RightMarkOnce
  \ClefAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-2.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #2.0
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionD = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-2.0 . -3.0)
}
positionARb = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-0.5 . 0.0)
  \once \override Score.RehearsalMark #'padding = #2.0
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionI = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-2.0 . -3.0)
}
positionL = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakA = { \break }
breakARA = { \break }
breakF = { \break }
breakG = { \break }
breakARB = { \break }
breakK = { \break }

\include "russishe_sher_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #24
        }
    }
}
