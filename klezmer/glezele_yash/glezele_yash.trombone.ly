\version "2.18.2"

\include "glezele_yash.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "glezele_yash.notes.ily"
trombonemelodynotes = \transpose c c,, { \flutenotes }
trombonenotes = \transpose c c,,, { \altoforflutenotes }
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \tromboneplusmelodysubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}
