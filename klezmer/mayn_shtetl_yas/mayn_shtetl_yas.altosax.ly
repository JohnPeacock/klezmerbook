\version "2.14.0"

\include "mayn_shtetl_yas.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
breakA = { \break }

\include "mayn_shtetl_yas.notes.ily"
clarinetforaltonotes = \transpose ees bes, { \clarinetnotes }
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxplusclarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}
