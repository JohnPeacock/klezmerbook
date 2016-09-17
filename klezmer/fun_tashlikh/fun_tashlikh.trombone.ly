\version "2.14.0"

\include "fun_tashlikh.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "fun_tashlikh.notes.ily"
\include "staves-and-scores.ily"

trombonenonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \transpose c c,, { \violinnotes } }
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
        }
    }
}
