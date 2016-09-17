\version "2.14.0"

\include "sherele_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    indent = 2.2\cm
}

breakA = { \break }
breakB = { \break }

\include "sherele_00.notes.ily"
\include "staves-and-scores.ily"

clarinetplusaccompsubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \bandmNVSPLIT
    }
    \clarinetchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "Mel."
    }  {
        \clef violin
        \new Voice <<
            { \clarinetonenotes }
        >>
    }

    \new Staff \with {
        instrumentName = "Accompaniment"
        shortInstrumentName = "Acc."
    }  {
        \set Score.skipBars = ##t
        \override MultiMeasureRest #'expand-limit = #1
        \clef violin
        \new Voice <<
            { \transpose c' c \clarinettwonotes }
        >>
    }
>>

instrumentMarkup = \clarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplusaccompsubscore
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
            system-count = #11
        }
    }
}
