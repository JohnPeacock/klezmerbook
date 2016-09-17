\version "2.14.0"

\include "flatbush_waltz.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionB  = {
  \KeyAlignMark
  \CenterMarkOnce
}

breakAfor = { \break }
breakAeit = { \break }
breakAtwl = { \break }
breakA = { \break }
breakBfor = { \break }
breakBeit = { \break }
breakBtwl = { \break }

\include "flatbush_waltz.notes.ily"
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
