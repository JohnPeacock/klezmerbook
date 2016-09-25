\version "2.18.2"

\include "sherele_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakFIsix = { \break }
breakAeit = { \break }
breakFI = { \break }

\include "sherele_00.notes.ily"
clarinetforaltonotes = \transpose ees bes, { \clarinetonenotes }
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

altosaxplusclarinetsubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \bandmNVSPLIT
    }
    \altosaxchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \clarinetforaltonotes }
    }

    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altosaxnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \altosaxplusclarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #11
        }
    }
}
