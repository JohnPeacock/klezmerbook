\version "2.18.2"

\include "araber_tants.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "araber_tants.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \markup { "" }

\score {
    \transpose e d { \previewsubscore }
    \include "preview-header.ily"
    \layout {
        \include "translators.ily"
        system-count = #1
    }
}
