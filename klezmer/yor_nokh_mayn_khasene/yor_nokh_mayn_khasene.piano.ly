\version "2.14.0"

\include "yor_nokh_mayn_khasene.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAfiv = { \break }
breakA = { \break }
breakBfiv = { \break }
breakB = { \break }
breakCfiv = { \break }
breakCten = { \break }
breakCfft = { \break }
breakCton = { \break }

\include "yor_nokh_mayn_khasene.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \pianoInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
