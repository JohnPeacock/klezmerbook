\version "2.18.2"

\include "abi_gezunt_1.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

CMString  = {
  <c e g>-\markup { \whiteout { \hspace #-2.6 \pad-around #0.85 "No Chord" } }
  <c e g b>-\markup { \whiteout { \hspace #-2.6 \pad-around #0.85 "N.C.    " } }
}
CMStringX = #(append (sequential-music-to-chord-exceptions CMString #t)
           ignatzekExceptions)
noChordStringOn = { \set chordNameExceptions = #CMStringX }
noChordStringOff = { \unset chordNameExceptions }

\include "abi_gezunt_1.notes.ily"

bandmNV = \altosaxbandm

\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #16
        }
    }
}
