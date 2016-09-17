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

euphoniumsubscore = <<
    \new ChordNames \with {
        voltaOnThisStaff = ##f
    } \chordmode {
        \bandmNVSPLIT
    }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        voltaOnThisStaff = ##t
        \omit Voice.StringNumber
    }  {
        \set Score.skipBars = ##t
        \override MultiMeasureRest #'expand-limit = #1
        \clef bass
        \new Voice { \euphoniumnotes }
    }
>>

instrumentMarkup = \euphoniumInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \euphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #11
        }
    }
}
