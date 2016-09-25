\version "2.18.2"

\include "joshua.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

\include "joshua.notes.ily"
\include "staves-and-scores.ily"

bandm = {
    \time 4/4
    s1*4 | \breakOne
    s1*4 | \breakTwo
    s1*4 | \breakThree
    s1*8 | \breakFive
    s1*4 | \breakSix
    s1*4 | \breakSeven
    s1*4 | \breakEight
    s1*4 |
    \bar "|."
}

bandmchordnames = \new ChordNames \with {
} \chordmode {
    \bandm
}

trumpetnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \trumpetnotes }
}

trumpetsubscore = <<
    \bandmchordnames
    \trumpetchordnames
    \trumpetnonamestaff
>>

instrumentMarkup = \trumpetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \trumpetsubscore
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
        }
    }
}
