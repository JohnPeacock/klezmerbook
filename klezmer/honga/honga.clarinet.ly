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

breakBeit = { \pageBreak }
breakDfor = { \pageBreak }
breakEeit = { \pageBreak }
breakEtht = { \break }
breakEsxt = { \break }
breakEett = { \noBreak }
breakBL = { \noBreak }

\include "honga.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

clarinetsubscore = <<
    \clarinetchordnames
    \clarinetonestaff
    \clarinettwostaff
>>

\book {
    \include "book-header.ily"
    \score {
        \clarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
