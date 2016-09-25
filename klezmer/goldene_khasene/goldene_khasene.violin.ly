\version "2.18.2"

\include "goldene_khasene.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB = {
  \RightMarkOnce
  \ClefAlignMark
}
positionAI = {
  \RightMarkOnce
  \ClefAlignMark
}

breakA = { \break }
breakC = { \break }

\include "goldene_khasene.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #18
        }
    }
}
