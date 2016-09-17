\version "2.14.0"

\include "papirosn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "papirosn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \markup { "" }

\score {
    \transpose d a { \previewsubscore }
    \include "preview-header.ily"
    \layout {
        \include "translators.ily"
        system-count = #1
    }
}
