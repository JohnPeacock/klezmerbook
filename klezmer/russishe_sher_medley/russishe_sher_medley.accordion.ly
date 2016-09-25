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
  \once \override Score.RehearsalMark #'extra-offset = #'(-5.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #3.0
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionD = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-3.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #4
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionF = {
  \LeftMarkOnce
  \BarAlignMark
}
positionARb = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-5.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #3.0
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionI = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-3.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #3
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}
positionJ = {
  \LeftMarkOnce
  \BarAlignMark
}
positionK = {
  \LeftMarkOnce
  \BarAlignMark
}
positionL = {
  \LeftMarkOnce
  \BarAlignMark
}
breakARAfft = { \noBreak }
breakARAsxt = { \noBreak }
breakARAsvt = { \noBreak }
breakARA = { \pageBreak }
breakF = { \break }
breakH = { \break }
breakARB = { \pageBreak }
breakKtwo = { \pageBreak }

\include "russishe_sher_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #26
        }
    }
}
