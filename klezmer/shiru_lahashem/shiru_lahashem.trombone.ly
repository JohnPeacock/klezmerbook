\version "2.18.2"

\include "shiru_lahashem.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakA = { \break }
breakB = { \break }

\include "shiru_lahashem.notes.ily"
\include "staves-and-scores.ily"

trombonenonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \transpose c c, { \violinnotes } }
}
trombonechordnames = \new ChordNames \with {
    \override VoltaBracket #'minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \violinchordletters
}
trombonesubscore = <<
    \bandmchordnames
    \trombonechordnames
    \trombonenonamestaff
>>

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #4
        }
    }
}
