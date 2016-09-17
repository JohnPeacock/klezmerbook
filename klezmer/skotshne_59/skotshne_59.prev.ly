\version "2.14.0"

\include "skotshne_59.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakAone = { \noBreak }
breakAtwo = { \noBreak }
breakAtre = { \noBreak }
breakAfor = { \noBreak }
breakAfiv = { \noBreak }

\include "skotshne_59.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \markup { "" }

\score {
    \previewsubscore
    \include "preview-header.ily"
    \layout {
        \include "translators.ily"
        system-count = #1
    }
}
