\version "2.18.2"

\include "tish_nigun.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionC  = {
  \RightMarkOnce
  \KeyAlignMark
}

breakA = { \break }
breakB = { \break }
breakC = { \break }

\include "tish_nigun.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscorenoremove
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }

}
