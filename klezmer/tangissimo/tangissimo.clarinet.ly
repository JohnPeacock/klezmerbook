\version "2.14.0"

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

breakAI = { \break }
breakAII = { \noBreak }
breakB = { \break }
breakAIIIfor = { \break }
breakAIII = { \pageBreak }
breakAIVfor = { \break }
breakAIV = { \break }
breakCfor = { \break }
breakC = { \break }

\include "tangissimo.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetsubscorenoremove
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
        }
    }
}
