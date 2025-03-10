\version "2.18.2"

instrumentMarkup = \markup { "" }

\include "oy_tate.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "oy_tate.notes.ily"
\include "staves-and-scores.ily"

\score {
    \previewsubscore
    \include "preview-header.ily"
    \layout {
        \include "translators.ily"
        system-count = #1
    }
}
