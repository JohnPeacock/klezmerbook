\version "2.14.0"

\include "nakht_in_gan_eydn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakBtht = { \noBreak }
breakBfrt = { \noBreak }
breakBfft = { \noBreak }
breakBsvt = { \noBreak }
breakBett = { \noBreak }
breakBnnt = { \noBreak }
breakCfft = { \noBreak }
breakCsvt = { \noBreak }

\include "nakht_in_gan_eydn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassClarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \Bbasssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #11
        }
    }
}
