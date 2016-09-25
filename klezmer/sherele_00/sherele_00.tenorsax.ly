\version "2.18.2"

\include "sherele_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAnnt = { \noBreak }
breakAtyo = { \noBreak }
breakBfft = { \noBreak }
breakBsvt = { \noBreak }

\include "sherele_00.notes.ily"
\include "staves-and-scores.ily"

tenorsaxsubscorenoremove = <<
%    \override Score.VerticalAxisGroup #'remove-first = ##t
    \new ChordNames \with {
        voltaOnThisStaff = ##f
    } \chordmode {
        \bandmNV
    }
    \tenorsaxchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "Mel."
        voltaOnThisStaff = ##t
    }  {
        \clef violin
        \new Voice <<
            { \clarinetonenotes }
        >>
    }

    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "Ten."
        voltaOnThisStaff = ##f
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorsaxnotes }
    }
>>

instrumentMarkup = \tenorSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \tenorsaxsubscorenoremove
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #11
        }
    }
}
