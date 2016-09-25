\version "2.18.2"

\include "nakht_in_gan_eydn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakBtwl = { \break }
breakBsxt = { \break }

\include "nakht_in_gan_eydn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \fluteInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \fluteplusaltosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}
