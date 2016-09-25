\version "2.18.2"

\include "tangissimo.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionDAB   = {
  \RightMarkOnce
  \ClefAlignMark
}
positionDS    = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(3.0 . 0.0)
}

breakAI = { \break }
breakAIIfor = { \break }
breakAII = { \break }
breakBsix = { \break }
breakB = { \break }
breakAIIIfor = { \break }
breakAIII = { \pageBreak }
breakAIVfor = { \break }
breakAIV = { \break }
breakCfor = { \break }
breakC = { \break }

\include "tangissimo.notes.ily"
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
