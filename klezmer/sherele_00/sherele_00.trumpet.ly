\version "2.18.2"

\include "sherele_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    indent = 2.2\cm
}

breakA = { \break }

\include "sherele_00.notes.ily"
\include "staves-and-scores.ily"

trumpetplusaccompsubscore = <<
    \new ChordNames \with {
        voltaOnThisStaff = ##f
    } \chordmode {
        \bandmNVSPLIT
    }

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "Mel."
        voltaOnThisStaff = ##t
    }  {
        \set Score.skipBars = ##t
        \override MultiMeasureRest #'expand-limit = #1
        \clef violin
        \new Voice <<
            { \trumpetonenotes }
        >>
    }
    \new Staff \with {
        instrumentName = "Accompaniment"
        shortInstrumentName = "Acc."
        voltaOnThisStaff = ##f
    }  {
        \clef violin
        \new Voice <<
            { \trumpettwonotes }
        >>
    }

>>

instrumentMarkup = \trumpetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trumpetplusaccompsubscore
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
            system-count = #11
        }
    }
}
