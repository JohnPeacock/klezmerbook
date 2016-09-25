\version "2.18.2"

instrumentMarkup = \markup { "" }

\include "hava_nagilah.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "hava_nagilah.notes.ily"
\include "staves-and-scores.ily"

\score {
    \previewsubscore
    \include "preview-header.ily"
    \layout {
        \include "translators.ily"
        system-count = #1
    }
}
