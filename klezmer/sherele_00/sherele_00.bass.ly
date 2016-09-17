\version "2.14.0"

\include "sherele_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakFIeit = { \break }
breakAone = { \break }
breakAnin = { \break }
breakAsvt = { \break }
breakBfor = { \break }
breakBtwl = { \break }
breakCtwo = { \break }

\include "sherele_00.notes.ily"
\include "staves-and-scores.ily"

basssubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \bandmNVSPLIT
    }
    \guitarchordnames
    \bassnonamestaff
>>

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}
