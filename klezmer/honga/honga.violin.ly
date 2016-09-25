\version "2.18.2"

\include "honga.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionSA = {
  \BarAlignMark
  \LeftMarkOnce
}
positionB  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionC  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionD  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionE  = {
  \KeyAlignMark
  \CenterMarkOnce
}

breakCone = { \pageBreak }
breakDfor = { \pageBreak }
breakEeit = { \pageBreak }
breakEett = { \noBreak }
breakBL = { \noBreak }

\include "honga.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

violinsubscore = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \bandmchordnames
    \guitarchordnames
    \violinonestaff
    \violintwostaff
>>

\book {
    \include "book-header.ily"
    \score {
        \violinsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
